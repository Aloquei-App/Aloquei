import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import '../../core/errors/auth_error.dart';
import '../../core/errors/firebase_error.dart';
import '../../core/models/user_model.dart';
import '../../resources/auth/firebase_auth.dart';
import '../../resources/user/firebase_user.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupStateRegister> {
  final AuthRepository _authRepository = AuthRepository();
  final UsersRepository _usersRepo = UsersRepository();
  User user;
  SignupBloc() : super(SignupInitial());

  @override
  Stream<SignupStateRegister> mapEventToState(
    SignupEvent event,
  ) async* {
    try {
      if (event is SubmitUserDataEvent) {
        yield SignupLoadingState();
        user = await _authRepository.createUserWithEmailPass(
            event.email, event.senha);
        await user.updateDisplayName(event.nome);
        UserModel userModel = UserModel(
            email: event.email,
            key: user.uid,
            nome: event.nome,
            isAdmin: false);
        await _usersRepo.insertUser(userModel);

        yield UserRegisterSuccessState(user: user, userModel: userModel);
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        yield UserRegisterFailState(message: authErrorHandler(e));
      } else if (e is FirebaseException) {
        yield UserRegisterFailState(message: firebaseErrorHandler(e));
      } else {
        print(e.toString());
        yield UserRegisterFailState(message: "Algo saiu errado");
      }
    }
  }
}
