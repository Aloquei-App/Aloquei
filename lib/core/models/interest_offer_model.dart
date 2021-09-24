import 'package:cloud_firestore/cloud_firestore.dart';

import 'offers_model.dart';

class InterestModel extends OffersModel {
  String desiredCourse;
  int desiredEndAge;
  String desiredGender;
  int desiredStartAge;
  bool hasHouse;
  bool likesPets;
  String socialNetworkLink;
  String university;

  InterestModel(
      {this.desiredCourse,
      this.desiredEndAge,
      this.desiredGender,
      this.desiredStartAge,
      this.hasHouse,
      this.likesPets,
      this.socialNetworkLink,
      this.university,
      String cidade,
      String email,
      String obs,
      String tele,
      String userId,
      String userName,
      int qtdRoom,
      int tipo}) {
    city = cidade;
    mail = email;
    observations = obs;
    phone = tele;
    postUserId = userId;
    postUserName = userName;
    qtdRooms = qtdRoom;
    type = tipo;
  }

  InterestModel.fromJson(DocumentSnapshot doc) {
    Map<String, dynamic> json = doc.data();
    doc = doc;
    key = doc.id;
    city = json['city'] ?? "";
    desiredCourse = json['desiredCourse'] ?? "";
    desiredEndAge = json['desiredEndAge'] ?? 0;
    desiredGender = json['desiredGender'] ?? "";
    desiredStartAge = json['desiredStartAge'] ?? 0;
    hasHouse = json['hasHouse'] ?? false;
    likesPets = json['likesPets'] ?? false;
    mail = json['mail'] ?? "";
    observations = json['observations'];
    phone = json['phone'] ?? "";
    postUserId = json['postUserId'] ?? "";
    postUserName = json['postUserName'] ?? "";
    qtdRooms = json['qtdRooms'] ?? 0;
    socialNetworkLink = json['socialNetworkLink'] ?? "";
    type = json['type'] ?? 0;
    university = json['university'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['desiredCourse'] = this.desiredCourse;
    data['desiredEndAge'] = this.desiredEndAge;
    data['desiredGender'] = this.desiredGender;
    data['desiredStartAge'] = this.desiredStartAge;
    data['hasHouse'] = this.hasHouse;
    data['likesPets'] = this.likesPets;
    data['mail'] = this.mail;
    data['observations'] = this.observations;
    data['phone'] = this.phone;
    data['postUserId'] = this.postUserId;
    data['postUserName'] = this.postUserName;
    data['qtdRooms'] = this.qtdRooms;
    data['socialNetworkLink'] = this.socialNetworkLink;
    data['type'] = this.type;
    data['university'] = this.university;
    return data;
  }
}
