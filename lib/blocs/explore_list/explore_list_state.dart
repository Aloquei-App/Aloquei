part of 'explore_list_bloc.dart';

abstract class ExploreListState extends Equatable {
  const ExploreListState();

  @override
  List<Object> get props => [];
}

class ExploreListInitial extends ExploreListState {}

class LoadingListState extends ExploreListState {}

class ShowListState extends ExploreListState {}

class UpdateListState extends ExploreListState {}
