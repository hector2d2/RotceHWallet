import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  static final authenticationFirebase = FirebaseAuth.instance;
  static Future<UserCredential> signInWithEmail(
          String email, String password) async =>
      await authenticationFirebase.signInWithEmailAndPassword(
          email: email, password: password);

  static Future<UserCredential> registerUser(
          String email, String password) async =>
      await authenticationFirebase.createUserWithEmailAndPassword(
          email: email, password: password);
}
