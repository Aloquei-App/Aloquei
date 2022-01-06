import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/models/user_model.dart';
import '../../resources/user/firebase_user.dart';

part 'offer_detail_event.dart';
part 'offer_detail_state.dart';

class OfferDetailBloc extends Bloc<OfferDetailEvent, OfferDetailState> {
  final UserModel user;
  final String offerKey;
  final Function updateFav;
  final UsersRepository _usersRepository = UsersRepository();
  OfferDetailBloc(
      {@required this.user, @required this.offerKey, this.updateFav})
      : super(OfferDetailInitial());
  bool exist = false;

  updateOutFav() {
    if (updateFav != null) {
      updateFav(offerKey);
    }
  }

  get favorite => exist;
  @override
  Stream<OfferDetailState> mapEventToState(
    OfferDetailEvent event,
  ) async* {
    if (event is ScreenStarted) {
      if (user.favList != null) {
        exist = user.favList.contains(offerKey);
      }
      yield ShowState();
    } else if (event is UpdateFavoriteEvent) {
      if (exist) {
        user.favList.remove(offerKey);
        exist = false;
        await _usersRepository.updateFavorites(user.key, user.favList);
      } else {
        user.favList.add(offerKey);
        exist = true;
        await _usersRepository.updateFavorites(user.key, user.favList);
      }
      updateOutFav();
      yield ShowState();
      yield OfferDetailInitial();
    }
  }
}
