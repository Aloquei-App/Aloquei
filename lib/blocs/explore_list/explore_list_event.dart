part of 'explore_list_bloc.dart';

abstract class ExploreListEvent extends Equatable {
  const ExploreListEvent();

  @override
  List<Object> get props => [];
}

class ExploreListStartedEvent extends ExploreListEvent {}

class SearchEvent extends ExploreListEvent {
  final String search;

  SearchEvent({this.search});

  @override
  List<Object> get props => [search];
}

class UpdateFav extends ExploreListEvent {
  final String key;

  UpdateFav({this.key});

  @override
  List<Object> get props => [key];
}

class GetMoreItensEvent extends ExploreListEvent {
  final int tabIndex;

  GetMoreItensEvent({this.tabIndex});

  @override
  List<Object> get props => [tabIndex];
}
