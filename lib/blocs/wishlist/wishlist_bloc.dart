import 'dart:async';

import '../../core/models/house_offer_model.dart';

import '../../resources/offers/firestore_offers.dart';

import '../../core/models/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final OffersRepository _offersRepository = OffersRepository();
  final UserModel user;
  List<HouseOfferModel> favorites = [];

  WishlistBloc({@required this.user}) : super(WishlistInitial());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    try {
      if (event is WishlistStartedEvent) {
        yield LoadingWishlistState();
        if (user.favList.isNotEmpty) {
          favorites = await _offersRepository.getFavoritesId(user.favList);
          yield ShowWishlistState();
        } else {
          yield EmptyWishlistState();
        }
      }
    } catch (e) {
      print(e.toString());
      yield EmptyWishlistState();
    }
  }
}
