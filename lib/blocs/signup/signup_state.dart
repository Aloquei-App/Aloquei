part of 'signup_bloc.dart';

abstract class SignupStateRegister extends Equatable {
  const SignupStateRegister();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupStateRegister {}

class UserRegisterFailState extends SignupStateRegister {
  final String message;

  UserRegisterFailState({@required this.message});
}

class UserRegisterSuccessState extends SignupStateRegister {
  final User user;
  final UserModel userModel;

  UserRegisterSuccessState({@required this.userModel, @required this.user});
}

class SignupLoadingState extends SignupStateRegister {}
