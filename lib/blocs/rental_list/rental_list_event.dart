part of 'rental_list_bloc.dart';

abstract class RentalListEvent extends Equatable {
  const RentalListEvent();

  @override
  List<Object> get props => [];
}

class RentStartedEvent extends RentalListEvent {}

class GetMoreRentalEvent extends RentalListEvent {}

class NewRentalEvent extends RentalListEvent {}
