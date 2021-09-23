import 'dart:async';
import 'dart:html';
import 'package:aloquei_app/core/models/offers_model.dart';
import 'package:aloquei_app/resources/offers/firestore_offers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'rental_list_event.dart';
part 'rental_list_state.dart';

class RentalListBloc extends Bloc<RentalListEvent, RentalListState> {
  RentalListBloc() : super(RentalListInitial());

  @override
  Stream<RentalListState> mapEventToState(
    RentalListEvent event,
  ) async* {
    try {
      if (event is RentStartedEvent) {
        yield LoadingState();
        

      }
    }
    catch (e) {
      yield FailState(message: "Algo saiu errado, tente mais tarde");
    }
  }
}
