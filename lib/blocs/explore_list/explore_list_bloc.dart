import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../core/models/explore_model.dart';

part 'explore_list_event.dart';
part 'explore_list_state.dart';

class ExploreListBloc extends Bloc<ExploreListEvent, ExploreListState> {
  final ExploreModel exploreModel;
  ExploreListBloc({this.exploreModel}) : super(ExploreListInitial());

  int get getInitialTab => exploreModel != null ? exploreModel.type : 0;

  @override
  Stream<ExploreListState> mapEventToState(
    ExploreListEvent event,
  ) async* {
    if (event is ExploreListStartedEvent) {
      yield LoadingListState();
      if (exploreModel == null) {
        // carregar os mais recentes de cada
      } else {
        // carregar os mais recentes presentes no local escolhido
      }
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
  }
}
