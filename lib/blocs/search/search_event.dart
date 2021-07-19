part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class SearchStartedEvent extends SearchEvent {}

class StateSelectedEvent extends SearchEvent {
  final EstadosModel estado;

  StateSelectedEvent({this.estado});

  @override
  List<Object> get props => [estado];
}

class CitySelectedEvent extends SearchEvent {
  final CitiesModel cidade;

  CitySelectedEvent({this.cidade});

  @override
  List<Object> get props => [cidade];
}

class TypeSelectedEvent extends SearchEvent {
  final int tipo;

  TypeSelectedEvent({this.tipo});

  @override
  List<Object> get props => [tipo];
}
