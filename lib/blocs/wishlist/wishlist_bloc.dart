import 'dart:async';

import '../../resources/offers/firestore_offers.dart';

import '../../core/models/user_model.dart';
import '../../resources/user/firebase_user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final UsersRepository _userRepository = UsersRepository();

  final OffersRepository _offersRepository = OffersRepository();
  final UserModel user;
  List<dynamic> favorites = [];
  List<String> listaTemp = [];
  List listaFav = [
    [
      'test',
      'https://www.showmetech.com.br/wp-content/uploads//2021/02/capa-dog.png'
    ]
  ];
  WishlistBloc({@required this.user}) : super(WishlistInitial());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    try {
      if (event is WishlistStartedEvent) {
        yield LoadingWishlistState();
        favorites = await _offersRepository.getFavoritesId(user.favList);
        yield ShowWishlistState();
      } else if (event is NewWishlistState) {
        await _userRepository.updateFavorites(user.key, listaTemp);
        yield LoadingWishlistState();
      }
    } catch (e) {
      print(e.toString());
      yield ShowWishlistState();
    }
  }
}
