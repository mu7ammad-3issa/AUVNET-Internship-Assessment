import 'package:nawel/features/auth/domian/entities/user.dart';

import '../../data/data_source/auth_remote_data_source.dart';

class AuthRepoImpl {
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
