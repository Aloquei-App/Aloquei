import 'package:aloquei_app/core/models/house_offer_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flow_builder/flow_builder.dart';

continuePressed(
    {int houseType,
    String typeRoom,
    String adress,
    String city,
    String state,
    int qtdRooms,
    BuildContext context}) {
  context.flow<HouseOfferModel>().update((houseOfferModel) =>
      houseOfferModel.copyWith(
          houseType: houseType,
          typeRoom: typeRoom,
          address: adress,
          cidade: city,
          estado: state,
          qtdQuartos: qtdRooms));
}

sendData(
    {int houseType,
    String typeRoom,
    String adress,
    String city,
    String state,
    int qtdRooms,
    BuildContext context}) {
  context.flow<HouseOfferModel>().complete((houseOfferModel) =>
      houseOfferModel.copyWith(
          houseType: houseType,
          typeRoom: typeRoom,
          address: adress,
          cidade: city,
          estado: state,
          qtdQuartos: qtdRooms));
}
