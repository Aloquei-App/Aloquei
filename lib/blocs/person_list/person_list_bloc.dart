import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../core/models/user_model.dart';
import 'package:aloquei_app/core/models/house_offer_model.dart';
import 'package:aloquei_app/resources/offers/firestore_offers.dart';
import 'dart:async';
part 'person_list_event.dart';
part 'person_list_state.dart';

class PersonListBloc extends Bloc<PersonListEvent, PersonListState> {
  final UserModel user;
  PersonListBloc({this.user}) : super(PersonListInitial());

  OffersRepository _offersRepository = OffersRepository();

  List<InterestModel> _houseApList = [];

  List<InterestModel> get getApCasa => _houseApList;



  @override
  Stream<PersonListState> mapEventToState(
    PersonListEvent event,
  ) async* {
    try {
      if (event is PersonListStartedEvent) {
        yield LoadingPersonListState();
        _houseApList = 
            await _offersRepository.getInterestByIdPost(user.key);
            yield ShowPersonListState();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
