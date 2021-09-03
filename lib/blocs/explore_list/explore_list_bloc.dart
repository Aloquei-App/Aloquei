import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/models/explore_model.dart';
import '../../core/models/house_offer_model.dart';

part 'explore_list_event.dart';
part 'explore_list_state.dart';

class ExploreListBloc extends Bloc<ExploreListEvent, ExploreListState> {
  final ExploreModel exploreModel;
  ExploreListBloc({this.exploreModel}) : super(ExploreListInitial());

  List<HouseOfferModel> _republicList = [];
  List<HouseOfferModel> _casaList = [];
  List<HouseOfferModel> _apList = [];
  List<HouseOfferModel> _quartoList = [];

  List<HouseOfferModel> get republic => _republicList;
  List<HouseOfferModel> get casa => _casaList;
  List<HouseOfferModel> get ap => _apList;
  List<HouseOfferModel> get quarto => _quartoList;

  @override
  Stream<ExploreListState> mapEventToState(
    ExploreListEvent event,
  ) async* {
    try {
      if (event is ExploreListStartedEvent) {
        yield LoadingListState();
        // carregar os mais recentes presentes no local escolhido
        yield ShowListState();
      } else if (event is GetMoreItensEvent) {
        yield UpdateListState();
        if (event.tabIndex == 0) {
          // TODO obter mais interesses
        } else if (event.tabIndex == 1) {
          // TODO obter mais apts
        } else if (event.tabIndex == 2) {
          // TODO obter mais repúblicas
        } else if (event.tabIndex == 3) {
          // TODO obter mais casas
        }
        yield ShowListState();
      } else if (event is SearchEvent) {
        yield UpdateListState();
        //event.search;
        // TODO buscar pelo termo
        yield ShowListState();
      }
    } catch (e) {
      print(e);
      yield FailState(message: e.toString());
    }
  }
}
