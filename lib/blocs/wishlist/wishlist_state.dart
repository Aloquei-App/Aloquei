part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object> get props => [];
}

class WishlistInitial extends WishlistState {}

class WishlistYetState extends WishlistState {}

class LoadingWishlistState extends WishlistState {}

class EmptyWishlistState extends WishlistState {}

class ShowWishlistState extends WishlistState {}
