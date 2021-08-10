import 'package:cloud_firestore/cloud_firestore.dart';

class OffersModel {
  String key;
  String city;
  String state;
  String mail;
  String observations;
  String phone;
  String postUserId;
  String postUserName;
  int qtdRooms;
  int type;
  int includedAt;
  DocumentReference doc;

  OffersModel(
      {this.city,
      this.state,
      this.mail,
      this.observations,
      this.phone,
      this.postUserId,
      this.postUserName,
      this.qtdRooms,
      this.type,
      this.includedAt});

  OffersModel.fromJson(Map<String, dynamic> json) {
    city = json['city'] ?? "";
    state = json['state'] ?? "";
    mail = json['mail'] ?? "";
    observations = json['observations'];
    phone = json['phone'] ?? "";
    postUserId = json['postUserId'] ?? "";
    postUserName = json['postUserName'] ?? "";
    qtdRooms = json['qtdRooms'] ?? 0;
    type = json['type'] ?? 0;
    includedAt = json['includedAt'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['state'] = this.state;
    data['mail'] = this.mail;
    data['observations'] = this.observations;
    data['phone'] = this.phone;
    data['postUserId'] = this.postUserId;
    data['postUserName'] = this.postUserName;
    data['qtdRooms'] = this.qtdRooms;
    data['type'] = this.type;
    data['includedAt'] = this.includedAt;
    return data;
  }
}
