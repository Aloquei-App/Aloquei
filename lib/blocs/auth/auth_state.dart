part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {
  @override
  List<Object> get props => null;
}

class AuthInitial extends AuthState {}

class AuthenticatedState extends AuthState {
  final User user;
  final UserModel userModel;
  AuthenticatedState({this.userModel, this.user});

  @override
  List<Object> get props => [user, userModel];
}

class UnauthenticatedState extends AuthState {}

class ExceptionState extends AuthState {
  final String message;

  ExceptionState({this.message});
}

class LoadingState extends AuthState {}

class SignupState extends AuthState {}

class ForgotState extends AuthState {}

class LoginState extends AuthState {}

class WelcomeState extends AuthState {}

class SignupPressedState extends AuthState {}
