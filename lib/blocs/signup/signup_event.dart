part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SubmitUserDataEvent extends SignupEvent {
  final String nome;
  final String email;
  final String senha;
  final bool isAdmin;
  final String gender;

  SubmitUserDataEvent({
    @required this.nome,
    @required this.email,
    @required this.senha,
    this.isAdmin,
    this.gender,
  });

  @override
  List<Object> get props => [nome, email, senha];
}
