import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/models/interest_offer_model.dart';

continuePressed(
    {int type,
    String state,
    String city,
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
    String observations,
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
          tipo: type,
          observacoes: observations,
          estado: state,
          qntquartos: qtdRooms,
          idadeInicial: desiredStartAge,
        ),
      );
}

sendData(
    {String state,
    int type,
    String city,
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
    String observations,
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
          observacoes: observations,
          tipo: type,
          estado: state,
          qntquartos: qtdRooms,
          idadeInicial: desiredStartAge,
        ),
      );
}
