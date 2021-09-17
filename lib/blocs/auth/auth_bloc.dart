import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import '../../core/errors/auth_error.dart';
import '../../core/models/user_model.dart';
import '../../resources/auth/firebase_auth.dart';
import '../../resources/tokens/firestore_tokens.dart';
import '../../resources/user/firebase_user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository = AuthRepository();
  final UsersRepository _usersRepo = UsersRepository();
  TokenRepository tokenRepository = TokenRepository();
  AuthBloc() : super(AuthInitial());
  User _user;
  UserModel _userModel;

  @override
  Future<void> close() {
    if (_userModelSub != null) _userModelSub.cancel();
    return super.close();
  }

  User get getUser => _user;
  StreamSubscription<DocumentSnapshot> _userModelSub;
  UserModel get getUserModel => _userModel;

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    try {
      if (event is AppStartedEvent) {
        yield LoadingState();

        _user = _authRepository.getUser();
        Future.delayed(const Duration(seconds: 2), () {
          if (_user != null) {
            add(LoginSuccessEvent());
          } else {
            add(ExitEvent());
          }
        });
      } else if (event is LoginGoogleEvent) {
        yield LoadingState();
        UserCredential userCredential = await _authRepository.signInGoogle();
        if (userCredential.user != null) {
          _user = userCredential.user;
          add(LoginSuccessEvent());
        } else {
          yield ExceptionState(message: 'Não autenticado');
          yield UnauthenticatedState();
        }
      } else if (event is LoginEmailEvent) {
        _user = await _authRepository.signInEmailAndPassword(
            event.email, event.senha);
        add(LoginSuccessEvent());
      } else if (event is LogoutEvent) {
        await _authRepository.signOut();
        yield UnauthenticatedState();
      } else if (event is ExitEvent) {
        yield UnauthenticatedState();
      } else if (event is SignupPressedEvent) {
        yield SignupPressedState();
      } else if (event is LoginSuccessEvent) {
        _userModel = await _usersRepo.getUser(_user.uid);
        _userModelSub = _usersRepo.getStreamUser(_user.uid).listen((event) {
          _userModel = UserModel.fromSnapshot(event.data(), event.id);
        });
        if (_userModel != null) {
          yield AuthenticatedState(user: _user, userModel: _userModel);
        } else if (_user.displayName.isNotEmpty) {
          _userModel = UserModel(
              key: _user.uid,
              email: _user.email,
              name: _user.displayName,
              lastname: _user.displayName,
              isAdmin: false);
          bool success = await _usersRepo.insertUser(_userModel);
          if (success) {
            yield AuthenticatedState(user: _user, userModel: _userModel);
          } else {
            yield UnauthenticatedState();
          }
        } else {
          yield UnauthenticatedState();
        }
      } else if (event is SignupSuccessEvent) {
        _user = event.user;
        _userModel = event.userModel;
        yield AuthenticatedState(user: _user, userModel: _userModel);
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        yield ExceptionState(message: authErrorHandler(e));
        yield UnauthenticatedState();
      } else {
        print(e.toString());
        yield ExceptionState(message: "Algo saiu errado");
        yield UnauthenticatedState();
      }
    }
  }
}
