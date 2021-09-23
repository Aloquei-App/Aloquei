part of 'rental_list_bloc.dart';

abstract class RentalListState extends Equatable {
  const RentalListState();
  
  @override
  List<Object> get props => [];
}

class RentalListInitial extends RentalListState {}

class LoadingRentalState extends RentalListState {}

class UpdateRentalState extends RentalListState {}

class ShowRentalState extends RentalListState {}

class RentalYetState extends RentalListState {}

class ChangeRentalState extends RentalListState {}

