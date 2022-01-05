import 'dart:async';

import '../../core/models/user_model.dart';
import '../../resources/user/firebase_user.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'offer_detail_event.dart';
part 'offer_detail_state.dart';

class OfferDetailBloc extends Bloc<OfferDetailEvent, OfferDetailState> {
  final UserModel user;
  final String offerKey;
  final UsersRepository _usersRepository = UsersRepository();
  OfferDetailBloc({@required this.user, @required this.offerKey})
      : super(OfferDetailInitial());
  bool exist = false;
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
      yield ShowState();
      yield OfferDetailInitial();
    }
  }
}
