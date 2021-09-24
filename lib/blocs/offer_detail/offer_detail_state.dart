part of 'offer_detail_bloc.dart';

abstract class OfferDetailState extends Equatable {
  const OfferDetailState();

  @override
  List<Object> get props => [];
}

class OfferDetailInitial extends OfferDetailState {}

class ShowState extends OfferDetailState {}
