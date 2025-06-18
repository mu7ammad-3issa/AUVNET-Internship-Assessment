import '../entities/user.dart';

abstract class AuthRepo {
  Future<void> signIn(String email, String password);
  Future<void> signUp(String email, String password);
  Future<User?> getCurrentUser();
  Future<void> signOut();
}
