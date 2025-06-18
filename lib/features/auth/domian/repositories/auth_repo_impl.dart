// lib/features/auth/domian/repositories/auth_repo_impl.dart

import 'package:nawel/features/auth/domian/entities/user.dart';
import '../../data/data_source/auth_remote_data_source.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource dataSource;

  AuthRepoImpl(this.dataSource);

  @override
  Future<void> signIn(String email, String password) async {
    await dataSource.signIn(email, password);
  }

  @override
  Future<void> signUp(String email, String password) async {
    await dataSource.signUp(email, password);
  }

  @override
  Future<User?> getCurrentUser() async {
    return await dataSource.getCurrentUser();
  }

  @override
  Future<void> signOut() async {
    await dataSource.signOut();
  }
}
