part of 'register_home_bloc.dart';

abstract class RegisterHomeEvent extends Equatable {
  const RegisterHomeEvent();

  @override
  List<Object> get props => [];
}

class SubmitEvent extends RegisterHomeEvent {
  final HouseOfferModel houseOfferModel;

  SubmitEvent(this.houseOfferModel);
}

class ScreenStarted extends RegisterHomeEvent {}
