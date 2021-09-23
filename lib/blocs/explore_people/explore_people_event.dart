part of 'explore_people_bloc.dart';

abstract class ExplorePeopleEvent extends Equatable {
  const ExplorePeopleEvent();

  @override
  List<Object> get props => [];
}

class ExploreListStartedEvent extends ExplorePeopleEvent {}

class SearchEvent extends ExplorePeopleEvent {
  final String search;

  SearchEvent({this.search});

  @override
  List<Object> get props => [search];
}

class GetMoreItensEvent extends ExplorePeopleEvent {}
