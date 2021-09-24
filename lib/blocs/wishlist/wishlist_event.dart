part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class WishlistStartedEvent extends WishlistEvent {}

class ReceivedEvent extends WishlistEvent {
  final List<String> images;
  final String name;

  ReceivedEvent({this.images, this.name});
  @override
  List<Object> get props => [images, name];
}

class RemoveWishlistEvent extends WishlistEvent {
  final int index;
  final String key;

  RemoveWishlistEvent({this.index, this.key});
}
