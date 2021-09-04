import 'dart:async';

import 'package:aloquei_app/resources/favorites/firestore_favorites.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final FavoritesRepository _favoritesRepository = FavoritesRepository();
  final User user;
  List whishList = [];
  WishlistBloc(this.user) : super(WishlistInitial());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    try {
      if (event is WishlistStartedEvent) {
        yield LoadingWishlistState();
        whishList = await _favoritesRepository.getFavorites(user.uid);
        yield ShowWishlistState();
      } else if (event is NewWishlistState) {
        await _favoritesRepository.addFavorite(user.uid, whishList);
        yield LoadingWishlistState();
      }
    } catch (e) {
      print(e.toString());
      yield ShowWishlistState();
    }
  }
}
