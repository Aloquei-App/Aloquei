import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  FirebaseAuth _firebaseAuth;
  GoogleSignIn _googleSignIn;

  AuthRepository() {
    this._firebaseAuth = FirebaseAuth.instance;
    this._googleSignIn = GoogleSignIn(scopes: ['email']);
  }

  Stream<User> getAuthStates() {
    return _firebaseAuth.authStateChanges();
  }

  Future<User> login({
    @required AuthCredential credential,
  }) async {
    UserCredential userCredential =
        await _firebaseAuth.signInWithCredential(credential);
    return userCredential.user;
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  Future<User> createUserWithEmailPass(String email, String pass) async {
    try {
      UserCredential authResult =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      authResult.user.sendEmailVerification();
      return authResult.user;
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }

  // sign in with email and password
  Future<User> signInEmailAndPassword(String email, String password) async {
    try {
      var authresult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authresult.user;
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> requestNewPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<UserCredential> signInWithCredential(AuthCredential credential) =>
      _firebaseAuth.signInWithCredential(credential);

  Stream<User> getCurrentUser() => _firebaseAuth.authStateChanges();

  User getUser() {
    User user = _firebaseAuth.currentUser;
    return user;
  }

  Future<UserCredential> signInGoogle() async {
    try {
      GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      return await signInWithCredential(authCredential);
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }

  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }
}
