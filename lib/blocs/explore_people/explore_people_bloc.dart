import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/models/explore_model.dart';
import '../../core/models/interest_offer_model.dart';
import '../../resources/offers/firestore_offers.dart';

part 'explore_people_event.dart';
part 'explore_people_state.dart';

class ExplorePeopleBloc extends Bloc<ExplorePeopleEvent, ExplorePeopleState> {
  final ExploreModel exploreModel;
  ExplorePeopleBloc({this.exploreModel}) : super(ExplorePeopleInitial());

  OffersRepository _offersRepository = OffersRepository();

  List<InterestModel> _interestBaseList = [];

  List<InterestModel> _interestList = [];

  List<InterestModel> get interest => _interestList;

  bool _noMore = false;

  bool _running = false;

  List<InterestModel> _buildFilteredList(String search) {
    List<String> filtro = search.toLowerCase().split(' ');
    List<InterestModel> lista = [];
    for (var i = 0; i < _interestBaseList.length; i++) {
      if ((filtro
          .where((x) =>
              _interestBaseList[i].postUserName.toLowerCase().contains(x))
          .isNotEmpty)) lista.add(_interestBaseList[i]);
    }
    return lista;
  }

  @override
  Stream<ExplorePeopleState> mapEventToState(
    ExplorePeopleEvent event,
  ) async* {
    try {
      if (event is ExploreListStartedEvent) {
        yield LoadingListState();
        _interestBaseList = await _offersRepository.getInterestsFiltered(
            exploreModel.estado.sigla,
            exploreModel.estado.nome,
            exploreModel.city.nome);
        _interestList = _interestBaseList;
        yield ShowListState();
      } else if (event is GetMoreItensEvent) {
        yield UpdateListState();
        int ini = _interestBaseList.length;
        if (!_noMore && !_running) {
          _running = true;
          _interestBaseList += await _offersRepository.getInterestsFilteredMore(
              exploreModel.estado.sigla,
              exploreModel.estado.nome,
              exploreModel.city.nome,
              _interestBaseList.last.document);
          _interestList = _interestBaseList;
          if (_interestBaseList.length == ini) {
            _noMore = true;
          }
          _running = false;
        }
        yield ShowListState();
      } else if (event is SearchEvent) {
        yield UpdateListState();
        _interestList = _buildFilteredList(event.search);
        if (_interestList.length == 0) {
          _interestList = _interestBaseList;
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
