import 'package:nawel/features/auth/domian/repositories/auth_repo.dart';

class RegisterUsecase {
  final AuthRepo repository;

  RegisterUsecase(this.repository);

  Future<void> call(String email, String password) {
    return repository.signUp(email, password);
  }
}
