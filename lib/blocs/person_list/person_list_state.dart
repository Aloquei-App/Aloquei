part of 'person_list_bloc.dart';

abstract class PersonListState extends Equatable {
  const PersonListState();
  
  @override
  List<Object> get props => [];
}

class PersonListInitial extends PersonListState {}

class LoadingPersonListState extends PersonListState {}

class UpdatePersonListState extends PersonListState {}

class ShowPersonListState extends PersonListState {}

class PersonListYetState extends PersonListState {}

class ChangePersonListState extends PersonListState {}
