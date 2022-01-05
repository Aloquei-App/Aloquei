import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/models/explore_model.dart';
import '../../core/models/house_offer_model.dart';
import '../../core/models/user_model.dart';
import '../../resources/offers/firestore_offers.dart';
import '../../resources/user/firebase_user.dart';

part 'explore_list_event.dart';
part 'explore_list_state.dart';

class ExploreListBloc extends Bloc<ExploreListEvent, ExploreListState> {
  final UserModel user;
  final ExploreModel exploreModel;
  ExploreListBloc({@required this.user, @required this.exploreModel})
      : super(ExploreListInitial());

  OffersRepository _offersRepository = OffersRepository();
  UsersRepository _usersRepository = UsersRepository();

  List<HouseOfferModel> _republicList = [];
  List<HouseOfferModel> _casaList = [];
  List<HouseOfferModel> _apList = [];
  List<HouseOfferModel> _quartoList = [];

  List<HouseOfferModel> _republicBaseList = [];
  List<HouseOfferModel> _casaBaseList = [];
  List<HouseOfferModel> _apBaseList = [];
  List<HouseOfferModel> _quartoBaseList = [];

  bool _noMoreRepu = false;
  bool _noMoreCasa = false;
  bool _noMoreAp = false;
  bool _noMoreQuar = false;

  bool _runningRepu = false;
  bool _runningCasa = false;
  bool _runningAp = false;
  bool _runningQuar = false;

  List<HouseOfferModel> get republic => _republicList;
  List<HouseOfferModel> get casa => _casaList;
  List<HouseOfferModel> get ap => _apList;
  List<HouseOfferModel> get quarto => _quartoList;

  void favorite(String postId) {
    if (user.favList.contains(postId)) {
      user.favList.remove(postId);
      _usersRepository.updateFavorites(user.key, user.favList);
    } else {
      user.favList.add(postId);
      _usersRepository.updateFavorites(user.key, user.favList);
    }
  }

  void _buildFilteredList(String search) {
    _republicList = [];
    _casaList = [];
    _apList = [];
    _quartoList = [];
    List<String> filtro = search.toLowerCase().split(' ');

    for (var i = 0; i < _republicBaseList.length; i++) {
      if ((filtro
          .where((x) => _republicBaseList[i].name.toLowerCase().contains(x))
          .isNotEmpty)) _republicList.add(_republicBaseList[i]);
    }
    for (var i = 0; i < _casaBaseList.length; i++) {
      if ((filtro
          .where((x) => _casaBaseList[i].name.toLowerCase().contains(x))
          .isNotEmpty)) _casaList.add(_casaBaseList[i]);
    }
    for (var i = 0; i < _apBaseList.length; i++) {
      if ((filtro
          .where((x) => _apBaseList[i].name.toLowerCase().contains(x))
          .isNotEmpty)) _apList.add(_apBaseList[i]);
    }
    for (var i = 0; i < _quartoBaseList.length; i++) {
      if ((filtro
          .where((x) => _quartoBaseList[i].name.toLowerCase().contains(x))
          .isNotEmpty)) _quartoList.add(_quartoBaseList[i]);
    }
  }

  @override
  Stream<ExploreListState> mapEventToState(
    ExploreListEvent event,
  ) async* {
    try {
      if (event is ExploreListStartedEvent) {
        yield LoadingListState();
        _republicBaseList = await _offersRepository.getHousesFiltered(
            exploreModel.estado.sigla, exploreModel.city.nome, 0);
        _republicList = _republicBaseList;
        _casaBaseList = await _offersRepository.getHousesFiltered(
            exploreModel.estado.sigla, exploreModel.city.nome, 1);
        _casaList = _casaBaseList;
        _apBaseList = await _offersRepository.getHousesFiltered(
            exploreModel.estado.sigla, exploreModel.city.nome, 2);
        _apList = _apBaseList;
        _quartoBaseList = await _offersRepository.getHousesFiltered(
            exploreModel.estado.sigla, exploreModel.city.nome, 3);
        _quartoList = _quartoBaseList;
        yield ShowListState();
      } else if (event is GetMoreItensEvent) {
        yield UpdateListState();
        if (event.tabIndex == 0 && !_noMoreRepu && !_runningRepu) {
          _runningRepu = true;
          int ini = _republicBaseList.length;
          if (_republicBaseList.length == 0)
            _noMoreQuar = true;
          else
            _republicBaseList += await _offersRepository.getHousesFilteredMore(
                exploreModel.estado.sigla,
                exploreModel.city.nome,
                0,
                _republicBaseList.last.document);
          _republicList = _republicBaseList;
          if (ini == _republicBaseList.length) _noMoreRepu = true;
          _runningRepu = false;
        } else if (event.tabIndex == 1 && !_noMoreCasa && !_runningCasa) {
          _runningCasa = true;
          int ini = _casaBaseList.length;
          if (_casaBaseList.length == 0)
            _noMoreQuar = true;
          else
            _casaBaseList += await _offersRepository.getHousesFilteredMore(
                exploreModel.estado.sigla,
                exploreModel.city.nome,
                1,
                _casaBaseList.last.document);
          _casaList = _casaBaseList;
          if (ini == _casaBaseList.length) _noMoreCasa = true;
          _runningCasa = false;
        } else if (event.tabIndex == 2 && !_noMoreAp && !_runningAp) {
          _runningAp = true;
          int ini = _apBaseList.length;
          if (_apBaseList.length == 0)
            _noMoreQuar = true;
          else
            _apBaseList += await _offersRepository.getHousesFilteredMore(
                exploreModel.estado.sigla,
                exploreModel.city.nome,
                2,
                _apBaseList.last.document);
          _apList = _apBaseList;
          if (ini == _apBaseList.length) _noMoreAp = true;
          _runningAp = false;
        } else if (event.tabIndex == 3 && !_noMoreQuar && !_runningQuar) {
          _runningQuar = true;
          int ini = _quartoBaseList.length;
          if (_quartoBaseList.length == 0)
            _noMoreQuar = true;
          else
            _quartoBaseList += await _offersRepository.getHousesFilteredMore(
                exploreModel.estado.sigla,
                exploreModel.city.nome,
                3,
                _quartoBaseList.last.document);
          _quartoList = _quartoBaseList;
          if (ini == _quartoBaseList.length) _noMoreQuar = true;
          _runningQuar = false;
        }
        yield ShowListState();
      } else if (event is SearchEvent) {
        yield UpdateListState();
        _buildFilteredList(event.search);
        if (_republicList.length == 0) {
          _republicList = _republicBaseList;
        }
        if (_casaList.length == 0) {
          _casaList = _casaBaseList;
        }
        if (_apList.length == 0) {
          _apList = _apBaseList;
        }
        if (_quartoList.length == 0) {
          _quartoList = _quartoBaseList;
        }
        yield ShowListState();
      }
    } catch (e, stack) {
      print(e);
      print(stack);
      yield FailState(message: e.toString());
    }
  }
}
