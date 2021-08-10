import 'dart:async';

import '../../core/models/explore_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/models/house_offer_model.dart';
import '../../core/models/interest_offer_model.dart';
import '../../resources/offers/firestore_offers.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  OffersRepository _offersRepository = OffersRepository();

  List<InterestModel> _interestList = [];

  List<HouseOfferModel> _houseApList = [];

  List<HouseOfferModel> _houseRepList = [];

  int _currentTab = 0;

  bool _exploring = false;

  int get getTab => _currentTab;

  List<InterestModel> get getInterest => _interestList;

  List<HouseOfferModel> get getApCasa => _houseApList;

  List<HouseOfferModel> get getRepub => _houseRepList;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    try {
      if (event is HomeStartedEvent) {
        yield LoadingState();
        _houseApList =
            await _offersRepository.getHousesLastFourByHouseType([1, 2]);
        _houseRepList =
            await _offersRepository.getHousesLastFourByHouseType([0]);
        _interestList = await _offersRepository.getInterestLastSix();
        yield ExploreState();
      } else if (event is OnTabChange) {
        yield LoadingState();
        if (event.index == 0 && !_exploring) {
          _currentTab = 0;
          yield ExploreState();
        } else if (event.index == 0 && _exploring) {
          _currentTab = 0;
          yield ExploreListState();
        } else if (event.index == 1) {
          _currentTab = 1;
          yield WhishListState();
        } else if (event.index == 2) {
          _currentTab = 2;
          yield HousesState();
        } else if (event.index == 3) {
          _currentTab = 3;
          yield InterestsState();
        } else if (event.index == 4) {
          _currentTab = 4;
          yield ProfileState();
        } else if (event.index == 5) {
          _currentTab = 0;
          _exploring = true;
          yield ExploreListState();
        } else if (event.index == -1) {
          _currentTab = 0;
          _exploring = false;
          yield ExploreState();
        }
      } else if (event is SearchFromSelectedEvent) {
        _currentTab = 0;
        _exploring = true;
        yield ExploreListState(exploreModel: event.exploreModel);
      }
    } catch (e) {
      yield FailState(message: "Algo saiu errado, tente mais tarde");
    }
  }
}
