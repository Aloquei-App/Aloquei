import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/models/house_offer_model.dart';

continuePressed(
    {int houseType,
    String typeRoom,
    String adress,
    String city,
    String state,
    int qtdRooms,
    int courtyard,
    String furnished,
    int garage,
    int kitchen,
    int livinRoom,
    int roomUsersQtd,
    int restroom,
    String name,
    String zipcode,
    String obs,
    double valueMonth,
    BuildContext context}) {
  context.flow<HouseOfferModel>().update(
        (houseOfferModel) => houseOfferModel.copyWith(
          houseType: houseType,
          typeRoom: typeRoom,
          address: adress,
          cidade: city,
          estado: state,
          qtdQuartos: qtdRooms,
          courtyard: courtyard,
          furnished: furnished,
          garage: garage,
          kitchen: kitchen,
          livinRoom: livinRoom,
          name: name,
          obs: obs,
          zipCode: zipcode,
          restroom: restroom,
          roomUsersQtd: roomUsersQtd,
          valueMonth: valueMonth,
        ),
      );
}

sendData(
    {int houseType,
    String typeRoom,
    String adress,
    String city,
    String state,
    int qtdRooms,
    int courtyard,
    String furnished,
    int roomUsersQtd,
    String zipcode,
    int restroom,
    int garage,
    int kitchen,
    int livinRoom,
    String name,
    String obs,
    double valueMonth,
    BuildContext context}) {
  context.flow<HouseOfferModel>().complete(
        (houseOfferModel) => houseOfferModel.copyWith(
          houseType: houseType,
          typeRoom: typeRoom,
          address: adress,
          cidade: city,
          estado: state,
          qtdQuartos: qtdRooms,
          courtyard: courtyard,
          furnished: furnished,
          zipCode: zipcode,
          restroom: restroom,
          roomUsersQtd: roomUsersQtd,
          garage: garage,
          kitchen: kitchen,
          livinRoom: livinRoom,
          name: name,
          obs: obs,
          valueMonth: valueMonth,
        ),
      );
}
