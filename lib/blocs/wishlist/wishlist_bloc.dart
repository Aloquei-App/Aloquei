import 'dart:async';

import 'package:aloquei_app/core/models/user_model.dart';
import 'package:aloquei_app/resources/user/firebase_user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final UsersRepository _userRepository = UsersRepository();
  final UserModel user;
  List whishList = [];
  WishlistBloc({@required this.user}) : super(WishlistInitial());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    try {
      if (event is WishlistStartedEvent) {
        yield LoadingWishlistState();
        whishList = user.favList;
        yield ShowWishlistState();
      } else if (event is NewWishlistState) {
        await _userRepository.updateFavorites(user.key, whishList);
        yield LoadingWishlistState();
      }
    } catch (e) {
      print(e.toString());
      yield ShowWishlistState();
    }
  }
}
