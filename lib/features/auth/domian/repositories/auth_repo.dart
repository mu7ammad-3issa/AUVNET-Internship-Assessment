import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<void> signIn(String email, String password);
  Future<void> signUp(String email, String password);
  Future<User?> getCurrentUser();
  Future<void> signOut();
}
