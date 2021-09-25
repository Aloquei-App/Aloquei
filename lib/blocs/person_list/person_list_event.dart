part of 'person_list_bloc.dart';

abstract class PersonListEvent extends Equatable {
  const PersonListEvent();

  @override
  List<Object> get props => [];
}

class PersonListStartedEvent extends PersonListEvent {}

class GetMorePersonListEvent extends PersonListEvent {}

class NewPersonListEvent extends PersonListEvent {}

class DeletePersonEvent extends PersonListEvent {
  final String id;

  DeletePersonEvent(this.id);
    @override
  List<Object> get props => [id];
}
