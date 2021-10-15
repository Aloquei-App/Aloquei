part of 'interest_bloc.dart';

abstract class InterestState extends Equatable {
  const InterestState();

  @override
  List<Object> get props => [];
}

class InterestInitial extends InterestState {}

class FailState extends InterestState {
  final String message;

  FailState({@required this.message});
  @override
  List<Object> get props => [message];
}

class SuccessState extends InterestState {
  final String message;

  SuccessState({@required this.message});
  @override
  List<Object> get props => [message];
}

class LoadingState extends InterestState {}

class ShowScreen extends InterestState {}

class SubmitEvent extends InterestState {
  final InterestModel interestModel;

  SubmitEvent(this.interestModel);
}
