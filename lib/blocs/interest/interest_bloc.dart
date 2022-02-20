import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../core/errors/auth_error.dart';
import '../../core/models/cities_model.dart';
import '../../core/models/estados_model.dart';
import '../../core/models/interest_offer_model.dart';
import '../../core/models/user_model.dart';
import '../../resources/apis/ibge.dart';
import '../../resources/offers/firestore_offers.dart';

part 'interest_event.dart';
part 'interest_state.dart';

class InterestBloc extends Bloc<InterestEvent, InterestState> {
  final IbgeRepository _ibgeRepository = IbgeRepository();
  final UserModel userModel;

  List<EstadosModel> _estadosList = [];

  List<CitiesModel> _cidadesList = [];

  List<DropdownMenuItem<CitiesModel>> cities = [];

  List<DropdownMenuItem<EstadosModel>> estados = [];

  InterestBloc(this.userModel) : super(InterestInitial());
  final OffersRepository offersRepository = OffersRepository();
  @override
  Stream<InterestState> mapEventToState(InterestEvent event) async* {
    if (event is ScreenStarted) {
      yield LoadingState();
      _estadosList = await _ibgeRepository.getStates();
      _estadosList.sort((eleA, eleB) => eleA.nome.compareTo(eleB.nome));
      estados = _estadosList.map((EstadosModel item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item.nome),
        );
      }).toList();
      yield ShowStatesDrop();
    } else if (event is StateSelectedEvent) {
      _cidadesList = await _ibgeRepository.getCitiesFromState(event.estado.id);
      _cidadesList.sort((eleA, eleB) => eleA.nome.compareTo(eleB.nome));
      cities = _cidadesList.map((CitiesModel item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item.nome),
        );
      }).toList();
      yield ShowCities();
    } else if (event is CitySelectedEvent) {
      yield LoadingState();
      yield ShowScreen();
    } else if (event is SubmitEvent) {
      yield LoadingState();
      yield ShowScreen();
      try {
        event.interestModel.postUserId = userModel.key;
        event.interestModel.type = 0;
        event.interestModel.mail = userModel.email;
        event.interestModel.postUserName =
            (userModel.name) + " " + (userModel.lastname);
        final inserted =
            await offersRepository.insertInterest(event.interestModel);
        if (InterestModel == inserted.runtimeType) {
          yield LoadingState();
          yield SuccessState(message: 'Interesse cadastrado!');
        } else {
          yield LoadingState();
          yield FailState(
              message:
                  'Não foi possível cadastrar seu interesse, entre em contato com o suporte!');
        }
      } catch (e) {
        yield LoadingState();
        yield FailState(message: authErrorHandler(e));
      }
    }
  }
}
