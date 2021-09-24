part of 'interest_bloc.dart';

abstract class InterestEvent extends Equatable {
  const InterestEvent();

  @override
  List<Object> get props => [];
}

class SubmitEvent extends InterestEvent {}

class ScreenStarded extends ProfileEvent {}
