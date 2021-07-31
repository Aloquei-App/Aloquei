import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/errors/auth_error.dart';
import '../../core/models/user_model.dart';
import '../../resources/auth/firebase_auth.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthRepository authRepository = AuthRepository();
  final UserModel user;

  String getName() {
    return user.nome;
  }

  String getMail() {
    return user.email;
  }

  bool getIsAdmin() {
    return user.isAdmin;
  }

  String getGender() {
    return user.gender;
  }

  ProfileBloc({this.user}) : super(ProfileInitial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if (event is ScreenStarded) {
      yield LoadingState();
      yield ProfileLoadedState();
    } else if (event is SendPasswordRecover) {
      try {
        await authRepository.requestNewPassword(user.email);
        yield SuccessState(message: 'E-mail de alteração de senha enviado');
      } catch (e) {
        yield FailState(message: authErrorHandler(e));
      }
    }
  }
}
