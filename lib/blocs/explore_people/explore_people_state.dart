part of 'explore_people_bloc.dart';

abstract class ExplorePeopleState extends Equatable {
  const ExplorePeopleState();

  @override
  List<Object> get props => [];
}

class ExplorePeopleInitial extends ExplorePeopleState {}

class LoadingListState extends ExplorePeopleState {}

class ShowListState extends ExplorePeopleState {}

class UpdateListState extends ExplorePeopleState {}

class FailState extends ExplorePeopleState {
  final String message;

  FailState({@required this.message});

  @override
  List<Object> get props => [message];
}
