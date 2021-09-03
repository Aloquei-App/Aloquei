import 'dart:async';

import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/models/explore_model.dart';

part 'explore_people_event.dart';
part 'explore_people_state.dart';

class ExplorePeopleBloc extends Bloc<ExplorePeopleEvent, ExplorePeopleState> {
  final ExploreModel exploreModel;
  ExplorePeopleBloc({this.exploreModel}) : super(ExplorePeopleInitial());

  List<InterestModel> _interestList = [];

  List<InterestModel> get interest => _interestList;

  @override
  Stream<ExplorePeopleState> mapEventToState(
    ExplorePeopleEvent event,
  ) async* {
    try {
      if (event is ExploreListStartedEvent) {
        yield LoadingListState();
        // carregar os mais recentes presentes no local escolhido
        yield ShowListState();
      } else if (event is GetMoreItensEvent) {
        yield UpdateListState();

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
