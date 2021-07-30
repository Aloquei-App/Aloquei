import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/models/user_model.dart';

class UsersRepository {
  FirebaseFirestore firestoreInstance;

  UsersRepository() {
    this.firestoreInstance = FirebaseFirestore.instance;
  }

  Future<bool> insertUser(UserModel userModel) async {
    return await firestoreInstance
        .collection('users')
        .doc(userModel.key)
        .set(userModel.toMap())
        .then((value) {
      return true;
    }).catchError((error) => throw error);
  }

  Future<UserModel> getUser(String userId) async {
    UserModel model;
    try {
      DocumentSnapshot querySnapshot =
          await firestoreInstance.collection('users').doc(userId).get();
      if (querySnapshot.exists) {
        model = UserModel.fromSnapshot(querySnapshot.data(), querySnapshot.id);
        return model;
      }
    } catch (error) {
      print(error.toString());
      return null;
    }
    return null;
  }

  Stream<DocumentSnapshot> getStreamUser(String userId) {
    return firestoreInstance.collection('users').doc(userId).snapshots();
  }
}
