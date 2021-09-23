import 'dart:async';
import 'dart:html';
// import 'package:aloquei_app/core/models/offers_model.dart';
import 'package:aloquei_app/core/models/house_offer_model.dart';
import 'package:aloquei_app/resources/offers/firestore_offers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../core/models/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'rental_list_event.dart';
part 'rental_list_state.dart';

class RentalListBloc extends Bloc<RentalListEvent, RentalListState> {
  RentalListBloc() : super(RentalListInitial());
  
  OffersRepository _offersRepository = OffersRepository();

  List<HouseOfferModel> _houseApList = [];

  List<HouseOfferModel> get getApCasa => _houseApList;
  
  get user => null;

  @override
  Stream<RentalListState> mapEventToState(
    RentalListEvent event,
  ) async* {
    try {
      if (event is RentStartedEvent) {
        yield LoadingRentalState();
        _houseApList =
            await _offersRepository.getHousesByIdUserPost(user.uid);
        
      }
    }
    catch (e) {
      print(e.toString());
    }
  }
}
