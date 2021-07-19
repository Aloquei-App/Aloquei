part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class LoadingState extends SearchState {}

class ShowAvailableStates extends SearchState {}

class ShowAvailableCities extends SearchState {}

class ShowAvailableTypes extends SearchState {}

class GoToMap extends SearchState {}
