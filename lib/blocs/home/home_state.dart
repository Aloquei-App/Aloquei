part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class LoadingState extends HomeState {}

class ExploreState extends HomeState {}

class WhishListState extends HomeState {}

class HousesState extends HomeState {}

class InterestsState extends HomeState {}

class ProfileState extends HomeState {}
