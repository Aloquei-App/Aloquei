part of 'interest_bloc.dart';

abstract class InterestEvent extends Equatable {
  const InterestEvent();

  @override
  List<Object> get props => [];
}

class SubmitEvent extends InterestEvent {
  final InterestModel interestModel;

  SubmitEvent(this.interestModel);
}

class ScreenStarted extends InterestEvent {}
