part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeStartedEvent extends HomeEvent {}

class OnTabChange extends HomeEvent {
  final int index;

  OnTabChange({this.index});
}

class SearchFromSelectedEvent extends HomeEvent {
  final ExploreModel exploreModel;

  SearchFromSelectedEvent({this.exploreModel});
}
