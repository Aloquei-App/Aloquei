import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  int _currentTab = 0;

  int get getTab => _currentTab;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is HomeStartedEvent) {
      yield LoadingState();
      yield ExploreState();
    } else if (event is OnTabChange) {
      yield LoadingState();
      if (event.index == 0) {
        _currentTab = 0;
        yield ExploreState();
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
      }
    }
  }
}
