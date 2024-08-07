import 'package:Bcom/application/abonnement/repositories/abonnement_repo.dart';
import 'package:Bcom/application/connected/connected_bloc.dart';
import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/devis/repositories/devis_repo.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/home/repositories/home_repo.dart';
import 'package:Bcom/application/splash/splash_bloc.dart';
import 'package:Bcom/application/user/repositories/user_repository.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:Bcom/infrastructure/_commons/network/network_info.dart';
import 'package:Bcom/routes/app_router.dart';
import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:permission_handler/permission_handler.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton<AppRouter>(AppRouter());
  final db = await new DatabaseCubit();
  GetStorage box = GetStorage();
  sl.registerFactory(() => Connectivity());
  sl.registerLazySingleton<IAppRequests>(() => AppRequests());
  sl.registerLazySingleton<INetworkInfo>(() => NetworkInfo(connectivity: sl()));
  sl.registerFactory<GetStorage>(() => box);
  sl.registerLazySingleton<DatabaseCubit>(() => db);
  sl..registerFactory(() => SplashBloc(database: sl()));

  sl
    ..registerFactory(() => UserBloc(userRepo: sl(), database: sl()))
    ..registerLazySingleton(() => UserRepo(apiClient: sl()));

  sl
    ..registerFactory(() => HomeBloc(database: sl(), homeRepo: sl()))
    ..registerLazySingleton(() => HomeRepo(apiClient: sl()));

  sl
    ..registerFactory(() => DevisBloc(devisRepo: sl(), database: sl()))
    ..registerLazySingleton(() => DevisRepo(apiClient: sl()));

  sl
    ..registerFactory(
        () => AbonnementBloc(abonnementRepo: sl(), database: sl()))
    ..registerLazySingleton(() => AbonnementRepo(apiClient: sl()));

  requestPermission();
  initConnected();
}

void initConnected() async {
  sl.registerFactory(() => ConnectedBloc());
}

Future<void> initLoad(context) async {
  BlocProvider.of<UserBloc>(context).add(GetUserEvent());
  BlocProvider.of<HomeBloc>(context).add(GetHomeInfo());

  BlocProvider.of<UserBloc>(context).add(UserDataEvent());

  BlocProvider.of<AbonnementBloc>(context)
    ..add(GetListTransaction())
    ..add(UserAbonnement())
    ..add(GetListAbonnement());
  BlocProvider.of<DevisBloc>(context)
    ..add(GetListParametre())
    ..add(GetListDevis());
}

Future<void> requestPermission() async {
  PermissionStatus status = await Permission.storage.request();
  print(status);

  if (status == PermissionStatus.granted) {
    print('accepte');
  } else {
    print('refuse');
  }
}
