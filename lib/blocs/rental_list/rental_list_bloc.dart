import 'dart:async';
import 'package:aloquei_app/core/models/house_offer_model.dart';
import 'package:aloquei_app/resources/offers/firestore_offers.dart';

import '../../core/models/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'rental_list_event.dart';
part 'rental_list_state.dart';

class RentalListBloc extends Bloc<RentalListEvent, RentalListState> {
  final UserModel user;
  RentalListBloc({this.user}) : super(RentalListInitial());

  OffersRepository _offersRepository = OffersRepository();

  List<HouseOfferModel> _houseApList = [];

  List<HouseOfferModel> get getApCasa => _houseApList;

  // get user => null;

  @override
  Stream<RentalListState> mapEventToState(
    RentalListEvent event,
  ) async* {
    try {
      if (event is RentStartedEvent) {
        yield LoadingRentalState();
        _houseApList = await _offersRepository.getHousesByIdUserPost(user.key);
        if (_houseApList.length > 0) {
          yield ShowRentalState();
        } else {
          yield NothingToShowState();
        }
      } else if (event is DeleteRentalEvent) {
        yield UpdateRentalState();
        await _offersRepository.removeOffer(event.id);
        int index =
            _houseApList.indexWhere((element) => element.key == event.id);
        if (index != -1) {
          _houseApList.removeAt(index);
        }
        if (_houseApList.length > 0) {
          yield ShowRentalState();
        } else {
          yield NothingToShowState();
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
