import 'dart:async';

import 'package:aloquei_app/core/models/user_model.dart';
import 'package:aloquei_app/resources/auth/auth_firestore.dart';
import 'package:aloquei_app/resources/tokens/firestore_tokens.dart';
import 'package:aloquei_app/resources/user/firebase_user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository = AuthRepository();
  final UsersRepository _usersRepository = UsersRepository();
  TokenRepository tokenRepository = TokenRepository();
  AuthBloc() : super(AuthInitial());
  User user;
  UserModel userModel;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    try {
      if (event is AppStartedEvent) {
        yield LoadingState();

        user = await _authRepository.getUser();
        if (user != null) {
          add(LoginSuccessEvent(user: user));
        } else {
          add(ToWelcomeEvent());
        }
      } else if (event is LoginEmailEvent) {
        user = await _authRepository.signInEmailAndPassword(
            event.email, event.senha);
        userModel = await _usersRepository.getUserById(user.uid);
        if (userModel == null) {
          yield UnauthenticatedState();
        } else {
          yield AuthenticatedState(user: user, userModel: userModel);
        }
      } else if (event is LogoutEvent) {
        await _authRepository.signOut();
        yield UnauthenticatedState();
      } else if (event is ExitEvent) {
        yield UnauthenticatedState();
      } else if (event is SignupEvent) {
        yield SignupState();
      } else if (event is LoginEvent) {
        yield LoginState();
      } else if (event is LoginSuccessEvent) {
        user = event.user;
        userModel = await _usersRepository.getUserById(user.uid);
        if (userModel == null) {
          yield UnauthenticatedState();
        } else {
          yield AuthenticatedState(user: user, userModel: userModel);
        }
      } else if (event is ForgotEvent) {
        yield ForgotState();
      } else if (event is RequestNewPasswordEvent) {
        bool success = await _authRepository.requestNewPassword(event.email);
        if (success) {
          yield UnauthenticatedState();
          yield ExceptionState(
              message: "Um e-mail foi enviado para a recuperação da senha");
        }
      } else if (event is CreateLoginEmailEvent) {
        user = await _authRepository.createUserWithEmailPass(
            event.email, event.senha);

        await user.updateDisplayName(event.nome);
        userModel = await _usersRepository.insertUser(
          user.uid,
          event.email,
          event.nome,
          event.gender,
        );
        if (userModel == null) {
          yield UnauthenticatedState();
        } else {
          yield AuthenticatedState(user: user, userModel: userModel);
        }
      } else if (event is ToWelcomeEvent) {
        yield WelcomeState();
      }
    } catch (e, stack) {
      print(e);
      print(stack);
    }
  }
}