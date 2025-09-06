import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/application/auth/login/login_bloc.dart';
import 'src/application/auth/register/register_bloc.dart';
import 'src/application/auth/resetPassword/resetpassword_bloc.dart';
import 'src/application/connected/connected_bloc.dart';
import 'src/application/splash/splash_bloc.dart';
import 'src/domain/auth/_commons/i_auth_repository.dart';
import 'src/infrastructure/_commons/network/app_requests.dart';
import 'src/infrastructure/_commons/network/network_info.dart';
import 'src/infrastructure/_commons/network/user_session.dart';
import 'src/infrastructure/auth/auth_repository.dart';
import 'src/infrastructure/auth/data_sources/auth_local_data_source.dart';
import 'src/infrastructure/auth/data_sources/auth_remote_data_source.dart';

final sl = GetIt.instance;

Future<void> init() async {
  initCore();
  initSplashScreen();
  initAuth();
  initConnected();
}

void initSplashScreen() {
  sl.registerFactory(() => SplashBloc(sl()));
}

Future<void> initCore() async {
  sl.registerFactory(() => Connectivity());
  sl.registerFactory(() => UserSession());
  sl.registerLazySingleton<INetworkInfo>(() => NetworkInfo(connectivity: sl()));
  final sharedPreferences = await SharedPreferences.getInstance();
  //final firebaseMessaging = FirebaseMessaging.instance;
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  //sl.registerLazySingleton<FirebaseMessaging>(() => firebaseMessaging);
  sl.registerLazySingleton<IAppRequests>(() => AppRequests());
}

Future<void> initAuth() async {
  sl.registerLazySingleton<IAuthLocalDataSource>(
    () => AuthLocalDataSource(sharedPreferences: sl(), userSession: sl()),
  );
  sl.registerLazySingleton<IAuthRemoteDataSource>(
    () => AuthRemoteDataSource(httpClient: sl()),
  );
  sl.registerLazySingleton<IAuthRepository>(
    () => AuthRepository(
      networkInfo: sl(),
      localDataSource: sl(),
      remoteDataSource: sl(),
    ),
  );
  sl.registerFactory(() => LoginBloc(repository: sl()));
  sl.registerFactory(() => RegisterBloc(repository: sl()));
  sl.registerFactory(() => ResetpasswordBloc(repository: sl()));
}

Future<void> initConnected() async {
  sl.registerFactory(() => ConnectedBloc());
}
