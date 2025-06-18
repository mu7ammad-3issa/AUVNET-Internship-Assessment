import 'package:nawel/features/auth/domian/repositories/auth_repo.dart';

class LoginUseCase {
  final AuthRepo repository;

  LoginUseCase(this.repository);

  Future<void> call(String email, String password) {
    return repository.signIn(email, password);
  }
}
