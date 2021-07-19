import 'package:aloquei_app/core/models/house_offer_model.dart';
import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
        model.doc = doc;
        return model;
      }
      return model;
    } catch (e, stack) {
      print(e);
      print(stack);
      throw e;
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
        model.doc = doc;
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
}
