import 'package:chatapp/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  User? _user;
  User? get user => _user;

//Intialize Auth state
  AuthProvider() {
    _authService.user.listen((user) {
      _user = user;
      notifyListeners();
    });
  }

  Future<bool> signUpWithEmailPassword(String email, password) async {
    try {
      User? user = await _authService.signUpEmailPassword(
        email,
        password,
      );
      return user != null;
    } on FirebaseAuthException catch (e) {
      e.toString();
      return false;
    }
  }

  Future<bool> signInWithEmailPassword(String email, password) async {
    try {
      User? user = await _authService.signInWithEmailPassword(
        email,
        password,
      );
      return user != null;
    } on FirebaseAuthException catch (e) {
      e.toString();
      return false;
    }
  }

  Future<bool> signWithGoogle() async {
    try {
      User? user = await _authService.signInWithGoogle();
      return user != null;
    } on FirebaseAuthException catch (e) {
      e.toString();
      return false;
    }
  }

  Future<void> signOut() async {
    await _authService.signOutUser();
  }
}
