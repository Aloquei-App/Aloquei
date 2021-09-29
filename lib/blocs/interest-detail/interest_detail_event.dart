part of 'interest_detail_bloc.dart';

abstract class InterestDetailEvent extends Equatable {
  const InterestDetailEvent();

  @override
  List<Object> get props => [];
}

class InterestDetailStartedEvent extends InterestDetailEvent{}


