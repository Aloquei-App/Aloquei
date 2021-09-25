part of 'register_home_bloc.dart';

abstract class RegisterHomeState extends Equatable {
  const RegisterHomeState();

  @override
  List<Object> get props => [];
}

class RegisterHomeInitial extends RegisterHomeState {}

class FailState extends RegisterHomeState {
  final String message;

  FailState({@required this.message});
  @override
  List<Object> get props => [message];
}

class SuccessState extends RegisterHomeState {
  final String message;

  SuccessState({@required this.message});
  @override
  List<Object> get props => [message];
}

class LoadingState extends RegisterHomeState {}
