import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';

import '../definitions.dart';
import 'offers_model.dart';

class HouseOfferModel extends OffersModel {
  String address;
  bool courtyard;
  String furnished;
  int garage;
  int houseType;
  List<String> images;
  List<String> includedOnValue;
  int kitchen;
  int livinRoom;
  int maxTenants;
  String name;
  NearUniversities nearUniversities;
  Position position;
  int restroom;
  int roomUsersQtd;
  String typeRoom;
  double valueCondominium;
  double valueMonth;
  String zipCode;
  String descHouseType;
  String obs;

  HouseOfferModel(
      {this.address,
      this.courtyard,
      this.furnished,
      this.garage,
      this.houseType,
      this.images,
      this.includedOnValue,
      this.kitchen,
      this.livinRoom,
      this.maxTenants,
      this.name,
      this.nearUniversities,
      this.position,
      this.restroom,
      this.roomUsersQtd,
      this.typeRoom,
      this.valueCondominium,
      this.valueMonth,
      this.zipCode,
      this.descHouseType,
      this.obs,
      int qtdQuartos,
      String cidade,
      String estado,
      String email,
      String tele,
      String userId,
      String userName,
      int tipo,
      int incluido}) {
    city = cidade;
    state = estado;
    mail = email;
    observations = obs;
    phone = tele;
    postUserId = userId;
    postUserName = userName;
    qtdRooms = qtdQuartos;
    type = tipo;
    includedAt = incluido;
  }

  HouseOfferModel.fromJson(DocumentSnapshot doc) {
    Map<String, dynamic> json = doc.data();
    document = doc;
    key = doc.id;
    address = json['address'] ?? "";
    courtyard = json['courtyard'] ?? false;
    furnished = json['furnished'] ?? "";
    garage = json['garage'] ?? 0;
    houseType = json['houseType'] ?? 0;
    descHouseType = houseTypes[houseType];
    images = json['images'].cast<String>() ?? [];
    includedOnValue = json['includedOnValue'].cast<String>() ?? [];
    kitchen = json['kitchen'] ?? 0;
    livinRoom = json['livinRoom'] ?? 0;
    city = json['city'] ?? "";
    state = json['state'] ?? "";
    mail = json['mail'] ?? "";
    maxTenants = json['maxTenants'] ?? 0;
    name = json['name'] ?? "";
    nearUniversities = json['nearUniversities'] != null
        ? new NearUniversities.fromJson(json['nearUniversities'])
        : null;
    observations = json['observations'] ?? "";
    phone = json['phone'] ?? "";
    if (json['position'] != null) {
      // TODO alterar para quando estiver funcionando o cadastro
      //position = Position.fromMap(json['position']);
    }
    postUserId = json['postUserId'] ?? "";
    postUserName = json['postUserName'] ?? "";
    qtdRooms = json['qtdRooms'] ?? 0;
    restroom = json['restroom'] ?? 0;
    roomUsersQtd = json['roomUsersQtd'] ?? 0;
    type = json['type'] ?? 0;
    typeRoom = json['typeRoom'] ?? "";
    valueCondominium = json['valueCondominium'].toDouble() ?? 0;
    includedAt = json['includedAt'] ?? 0;
    valueMonth = json['valueMonth'].toDouble() ?? 0;
    zipCode = json['zipCode'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['state'] = this.state;
    data['address'] = this.address;
    data['courtyard'] = this.courtyard;
    data['furnished'] = this.furnished;
    data['garage'] = this.garage;
    data['houseType'] = this.houseType;
    data['images'] = this.images;
    data['includedOnValue'] = this.includedOnValue;
    data['kitchen'] = this.kitchen;
    data['livinRoom'] = this.livinRoom;
    data['mail'] = this.mail;
    data['maxTenants'] = this.maxTenants;
    data['name'] = this.name;
    if (this.nearUniversities != null) {
      data['nearUniversities'] = this.nearUniversities.toJson();
    }
    data['observations'] = this.observations;
    data['phone'] = this.phone;
    if (this.position != null) {
      data['position'] = this.position.toJson();
    }
    data['postUserId'] = this.postUserId;
    data['postUserName'] = this.postUserName;
    data['qtdRooms'] = this.qtdRooms;
    data['restroom'] = this.restroom;
    data['roomUsersQtd'] = this.roomUsersQtd;
    data['type'] = this.type;
    data['typeRoom'] = this.typeRoom;
    data['valueCondominium'] = this.valueCondominium;
    data['valueMonth'] = this.valueMonth;
    data['zipCode'] = this.zipCode;
    return data;
  }

  HouseOfferModel copyWith({
    String address,
    int courtyard,
    String furnished,
    int garage,
    int houseType,
    List<String> images,
    List<String> includedOnValue,
    int kitchen,
    int livinRoom,
    int maxTenants,
    String name,
    NearUniversities nearUniversities,
    Position position,
    int restroom,
    int roomUsersQtd,
    String typeRoom,
    double valueCondominium,
    double valueMonth,
    String zipCode,
    String cidade,
    String estado,
    String email,
    String obs,
    String phone,
    String postUserId,
    String postUserName,
    int qtdQuartos,
    int type,
    int includedAt,
    DocumentSnapshot doc,
  }) {
    return HouseOfferModel(
      address: address ?? this.address,
      courtyard: courtyard ?? this.courtyard,
      furnished: furnished ?? this.furnished,
      garage: garage ?? this.garage,
      houseType: houseType ?? this.houseType,
      images: images ?? this.images,
      includedOnValue: includedOnValue ?? this.includedOnValue,
      kitchen: kitchen ?? this.kitchen,
      livinRoom: livinRoom ?? this.livinRoom,
      maxTenants: maxTenants ?? this.maxTenants,
      name: name ?? this.name,
      nearUniversities: nearUniversities ?? this.nearUniversities,
      position: position ?? this.position,
      restroom: restroom ?? this.restroom,
      roomUsersQtd: roomUsersQtd ?? this.roomUsersQtd,
      typeRoom: typeRoom ?? this.typeRoom,
      valueCondominium: valueCondominium ?? this.valueCondominium,
      valueMonth: valueMonth ?? this.valueMonth,
      zipCode: zipCode ?? this.zipCode,
      descHouseType: descHouseType ?? this.descHouseType,
      cidade: cidade ?? this.city,
      estado: estado ?? this.state,
      email: email ?? this.mail,
      obs: obs ?? this.observations,
      tele: phone ?? this.phone,
      userId: postUserId ?? this.postUserId,
      userName: postUserName ?? this.postUserName,
      tipo: type ?? this.type,
      incluido: includedAt ?? this.includedAt,
      qtdQuartos: qtdQuartos ?? this.qtdRooms,
    );
  }
}

class NearUniversities {
  Position location;
  String name;

  NearUniversities({this.location, this.name});

  NearUniversities.fromJson(Map<String, dynamic> json) {
    if (json['location'] != null) {
      // TODO alterar para quando estiver funcionando o cadastro
      //location = Position.fromMap(json['location']);
    }
    name = json['name'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['location'] = this.location.toJson();
    data['name'] = this.name;
    return data;
  }
}
