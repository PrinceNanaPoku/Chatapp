import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  //Stream to track User Authentication State
  Stream<User?> get user => _auth.authStateChanges();

//Sign Up User with Email and Password
  Future<User?> signUpEmailPassword(String email, password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      e.toString();
      return null;
    }
  }

//Sign In User With Email and Password
  Future<User?> signInWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      e.toString();
      return null;
    }
  }

  //Sign In with Google
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication goolgeAuth =
          await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: goolgeAuth.accessToken,
        idToken: goolgeAuth.idToken,
      );
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      e.toString();
      return null;
    }
  }
  //Sign In User With Apple Account

  //Sign Out User
  Future<void> signOutUser() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }
}
