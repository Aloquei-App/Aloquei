import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/models/house_offer_model.dart';
import '../../core/models/interest_offer_model.dart';

class OffersRepository {
  FirebaseFirestore _firestoreInstance;

  OffersRepository() {
    this._firestoreInstance = FirebaseFirestore.instance;
  }

  Future<InterestModel> insertInterest(InterestModel model) async {
    try {
      DocumentReference doc =
          await _firestoreInstance.collection('offers').add(model.toJson());
      if (doc != null) {
        model.key = doc.id;
        return model;
      }
      return model;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> updateInterest(String docId, InterestModel model) async {
    try {
      await _firestoreInstance
          .collection('offers')
          .doc(docId)
          .update(model.toJson());
      return true;
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
  }

  Future<HouseOfferModel> insertHouse(HouseOfferModel model) async {
    try {
      DocumentReference doc =
          await _firestoreInstance.collection('offers').add(model.toJson());
      if (doc != null) {
        model.key = doc.id;
        //model.doc = doc;
        return model;
      }
      return model;
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
  }

  Future<bool> updateHouse(String docId, HouseOfferModel model) async {
    try {
      await _firestoreInstance
          .collection('offers')
          .doc(docId)
          .update(model.toJson());
      return true;
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
  }

  Future<bool> removeOffer(String docId) async {
    await _firestoreInstance.collection('offers').doc(docId).delete();
    return true;
  }

  Future<List<InterestModel>> getInterestsFiltered(
      String estadoSigla, String cidade) async {
    List<InterestModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('type', isEqualTo: 0)
          .where('state', isEqualTo: estadoSigla)
          .where('city', isEqualTo: cidade)
          .limit(10)
          .get();
      snapshot.docs.forEach((element) {
        list.add(InterestModel.fromJson(element));
      });
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  Future<List<InterestModel>> getInterestsFilteredMore(
      String estadoSigla, String cidade, DocumentSnapshot doc) async {
    List<InterestModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('type', isEqualTo: 0)
          .where('state', isEqualTo: estadoSigla)
          .where('city', isEqualTo: cidade)
          .startAfterDocument(doc)
          .limit(10)
          .orderBy('includedAt', descending: true)
          .get();
      snapshot.docs.forEach((element) {
        list.add(InterestModel.fromJson(element));
      });
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  Future<List<HouseOfferModel>> getHousesFiltered(
      String estadoSigla, String cidade, int houseType) async {
    List<HouseOfferModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('type', isEqualTo: 1)
          .where('state', isEqualTo: estadoSigla)
          .where('city', isEqualTo: cidade)
          .where('houseType', isEqualTo: houseType)
          .limit(10)
          .orderBy('includedAt', descending: true)
          .get();
      snapshot.docs.forEach((element) {
        list.add(HouseOfferModel.fromJson(element));
      });
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  Future<List<HouseOfferModel>> getHousesFilteredMore(String estadoSigla,
      String cidade, int houseType, DocumentSnapshot doc) async {
    List<HouseOfferModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('type', isEqualTo: 1)
          .where('state', isEqualTo: estadoSigla)
          .where('city', isEqualTo: cidade)
          .where('houseType', isEqualTo: houseType)
          .limit(10)
          .orderBy('includedAt', descending: true)
          .startAfterDocument(doc)
          .get();
      snapshot.docs.forEach((element) {
        list.add(HouseOfferModel.fromJson(element));
      });
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  Future<List<InterestModel>> getInterestLastSix() async {
    List<InterestModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('type', isEqualTo: 0)
          .limit(6)
          .orderBy('includedAt', descending: true)
          .get();
      snapshot.docs.forEach((element) {
        list.add(InterestModel.fromJson(element));
      });
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  Future<List<HouseOfferModel>> getHousesLastFourByHouseType(
      List<int> houseTipoList) async {
    List<HouseOfferModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('type', isEqualTo: 1)
          .where('houseType', whereIn: houseTipoList)
          .limit(4)
          .orderBy('includedAt', descending: true)
          .get();
      snapshot.docs.forEach((element) {
        list.add(HouseOfferModel.fromJson(element));
      });
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  //Retorna as moradias de acordo com o id do usuario que postou
  Future<List<HouseOfferModel>> getHousesByIdUserPost(String id) async {
    List<HouseOfferModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('type', isEqualTo: 1)
          .where('postUserId', isEqualTo: id)
          .orderBy('includedAt', descending: true)
          .get();
      snapshot.docs.forEach(
        (element) {
          list.add(
            HouseOfferModel.fromJson(element),
          );
        },
      );
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  Future<List<HouseOfferModel>> getFavoritesId(List<String> ids) async {
    List<HouseOfferModel> list = [];
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await _firestoreInstance
          .collection('offers')
          .where(FieldPath.documentId, whereIn: ids)
          .get();

      if (snapshot.docs.length > 0) {
        snapshot.docs.forEach(
          (element) {
            list.add(
              HouseOfferModel.fromJson(element),
            );
          },
        );
      }
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }

  //Retorna a lista de interesses em pessoas com base no id do usuario
  Future<List<InterestModel>> getInterestByIdPost(String id) async {
    List<InterestModel> list = [];
    try {
      QuerySnapshot snapshot = await _firestoreInstance
          .collection('offers')
          .where('postUserId', isEqualTo: id)
          .where('type', isEqualTo: 0)
          .get();
      snapshot.docs.forEach(
        (element) {
          list.add(
            InterestModel.fromJson(element),
          );
        },
      );
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
    }
    return list;
  }
}
