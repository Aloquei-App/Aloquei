part of 'offer_detail_bloc.dart';

abstract class OfferDetailEvent extends Equatable {
  const OfferDetailEvent();

  @override
  List<Object> get props => [];
}

class UpdateFavoriteEvent extends OfferDetailEvent {}

class ScreenStarted extends OfferDetailEvent {}
