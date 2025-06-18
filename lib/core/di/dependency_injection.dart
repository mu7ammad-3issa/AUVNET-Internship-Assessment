import '../../features/auth/data/data_source/auth_remote_data_source.dart';
import '../../features/auth/domian/repositories/auth_repo.dart';
import '../../features/auth/domian/repositories/auth_repo_impl.dart';
import '../../features/auth/domian/usecases/login_usecase.dart';
import '../../features/auth/domian/usecases/register_usecase.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => AuthBloc(
      loginUseCase: sl(),
      registerUseCase: sl(),
    ),
  );
  // Use Cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => RegisterUsecase(sl()));
  // Repository
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(sl()),
  );
  // Data Source
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(),
  );
}
