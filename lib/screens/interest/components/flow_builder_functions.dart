import '../../../core/models/interest_offer_model.dart';
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
        (interestOfferModel) => interestOfferModel.copyWith(
          desiredCourse: desiredCourse,
          desiredEndAge: desiredEndAge,
          desiredGender: desiredGender,
          hasHouse: hasHouse,
          likesPets: likesPets,
          socialNetworkLink: socialNetworkLink,
          university: university,
          color: color,
          cidade: city,
          qntquartos: qtdRooms,
          idadeInicial: desiredStartAge,
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
        (interestOfferModel) => interestOfferModel.copyWith(
          desiredCourse: desiredCourse,
          desiredEndAge: desiredEndAge,
          desiredGender: desiredGender,
          hasHouse: hasHouse,
          likesPets: likesPets,
          socialNetworkLink: socialNetworkLink,
          university: university,
          color: color,
          cidade: city,
          idadeInicial: desiredStartAge,
          qntquartos: qtdRooms,
        ),
      );
}
