import 'package:cloud_firestore/cloud_firestore.dart';

class FavoritesRepository {
  FirebaseFirestore firestoreInstance;

  FavoritesRepository() {
    this.firestoreInstance = FirebaseFirestore.instance;
  }
  Future<void> addFavorite(String userId, List<String> favorites) async {
    try {
      await firestoreInstance
          .collection('users')
          .doc(userId)
          .set({'favList': favorites});
    } catch (error, stack) {
      print(error);
      print(stack);
      throw error;
    }
  }

  Future<List<String>> getFavorites(String userId) async {
    DocumentSnapshot snapshot =
        await firestoreInstance.collection('favorites').doc(userId).get();
    Map<String, dynamic> data = snapshot.data();
    if (data != null) {
      return data['favList'];
    } else {
      return [];
    }
  }
}
