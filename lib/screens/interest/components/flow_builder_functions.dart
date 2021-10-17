import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flow_builder/flow_builder.dart';

continuePressed(
    {String city,
    int qtdRooms,
    String desiredCourse,
    int desiredEndAge,
    String desiredGender,
    int desiredStartAge,
    bool hasHouse,
    bool likesPets,
    String socialNetworkLink,
    String university,
    Color color,
    BuildContext context}) {
  context.flow<InterestModel>().update(
        (houseOfferModel) => houseOfferModel.copyWith(
          desiredCourse: desiredCourse,
          desiredEndAge: desiredEndAge,
          desiredGender: desiredGender,
          hasHouse: hasHouse,
          likesPets: likesPets,
          socialNetworkLink: socialNetworkLink,
          university: university,
          color: color,
          city: city,
          qtdRooms: qtdRooms,
        ),
      );
}

sendData(
    {String city,
    int qtdRooms,
    String desiredCourse,
    int desiredEndAge,
    String desiredGender,
    int desiredStartAge,
    bool hasHouse,
    bool likesPets,
    String socialNetworkLink,
    String university,
    Color color,
    BuildContext context}) {
  context.flow<InterestModel>().complete(
        (houseOfferModel) => houseOfferModel.copyWith(
          desiredCourse: desiredCourse,
          desiredEndAge: desiredEndAge,
          desiredGender: desiredGender,
          hasHouse: hasHouse,
          likesPets: likesPets,
          socialNetworkLink: socialNetworkLink,
          university: university,
          color: color,
          city: city,
          qtdRooms: qtdRooms,
        ),
      );
}
