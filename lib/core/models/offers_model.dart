import 'package:cloud_firestore/cloud_firestore.dart';

class OffersModel {
  String key;
  String city;
  String mail;
  String observations;
  String phone;
  String postUserId;
  String postUserName;
  int qtdRooms;
  int type;
  DocumentReference doc;

  OffersModel({
    this.city,
    this.mail,
    this.observations,
    this.phone,
    this.postUserId,
    this.postUserName,
    this.qtdRooms,
    this.type,
  });

  OffersModel.fromJson(Map<String, dynamic> json) {
    city = json['city'] ?? "";
    mail = json['mail'] ?? "";
    observations = json['observations'];
    phone = json['phone'] ?? "";
    postUserId = json['postUserId'] ?? "";
    postUserName = json['postUserName'] ?? "";
    qtdRooms = json['qtdRooms'] ?? 0;
    type = json['type'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['mail'] = this.mail;
    data['observations'] = this.observations;
    data['phone'] = this.phone;
    data['postUserId'] = this.postUserId;
    data['postUserName'] = this.postUserName;
    data['qtdRooms'] = this.qtdRooms;

    data['type'] = this.type;

    return data;
  }
}
