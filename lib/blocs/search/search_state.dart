part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class LoadingState extends SearchState {}

class ShowAvailableStates extends SearchState {
  final List<EstadosModel> estadosList;

  ShowAvailableStates({@required this.estadosList});

  @override
  List<Object> get props => [estadosList];
}

class ShowAvailableCities extends SearchState {
  final List<CitiesModel> cidadesList;

  ShowAvailableCities({this.cidadesList});

  @override
  List<Object> get props => [cidadesList];
}

class ShowAvailableTypes extends SearchState {
  final String city;

  ShowAvailableTypes({this.city});

  @override
  List<Object> get props => [city];
}

class GoToMap extends SearchState {
  final CitiesModel city;
  final EstadosModel estado;
  final int type;

  GoToMap({this.city, this.estado, this.type});

  @override
  List<Object> get props => [city, estado, type];
}
