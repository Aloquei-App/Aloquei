part of 'interest_detail_bloc.dart';

abstract class InterestDetailState extends Equatable {
  const InterestDetailState();
  
  @override
  List<Object> get props => [];
}

class InterestDetailInitial extends InterestDetailState {}

class LoadingInterestDetailState extends InterestDetailState{}

class UpdateInterestDetailState extends InterestDetailState{}

class ShowInterestDetailPageState extends InterestDetailState{}

class NothingToShowState extends InterestDetailState{}