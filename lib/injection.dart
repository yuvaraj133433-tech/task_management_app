import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Register repositories, usecases, blocs here
  // Example:
  // sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
  // sl.registerFactory(() => AuthBloc(sl()));
}
