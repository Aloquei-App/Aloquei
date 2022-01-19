import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../core/errors/auth_error.dart';
import '../../core/models/cities_model.dart';
import '../../core/models/estados_model.dart';
import '../../core/models/house_offer_model.dart';
import '../../core/models/user_model.dart';
import '../../resources/apis/ibge.dart';
import '../../resources/offers/firestore_offers.dart';

part 'register_home_event.dart';
part 'register_home_state.dart';

class RegisterHomeBloc extends Bloc<RegisterHomeEvent, RegisterHomeState> {
  final UserModel userModel;

  RegisterHomeBloc(this.userModel) : super(RegisterHomeInitial());
  final OffersRepository offersRepository = OffersRepository();

  final IbgeRepository _ibgeRepository = IbgeRepository();
  List<EstadosModel> _estadosList = [];

  List<CitiesModel> _cidadesList = [];

  List<DropdownMenuItem<CitiesModel>> cities = [];

  List<DropdownMenuItem<EstadosModel>> estados = [];
  @override
  Stream<RegisterHomeState> mapEventToState(RegisterHomeEvent event) async* {
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
        event.houseOfferModel.type = 1;
        event.houseOfferModel.mail = userModel.email;
        event.houseOfferModel.roomUsersQtd = 1;
        event.houseOfferModel.postUserId = userModel.key;
        event.houseOfferModel.postUserName =
            (userModel.name) + " " + (userModel.lastname);
        final inserted =
            await offersRepository.insertHouse(event.houseOfferModel);
        if (HouseOfferModel == inserted.runtimeType) {
          yield LoadingState();
          yield SuccessState(message: 'Moradia cadastrada!');
        } else {
          yield LoadingState();
          yield FailState(
              message:
                  'Não foi possível cadastrar sua moradia, entre em contato com o suporte!');
        }
      } catch (e) {
        yield LoadingState();
        yield FailState(message: authErrorHandler(e));
      }
    }
  }
}
