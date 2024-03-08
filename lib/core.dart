import 'package:Bcom/application/connected/connected_bloc.dart';
import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/export_bloc.dart';

import 'package:Bcom/application/biker/repositories/biker_repo.dart';
import 'package:Bcom/application/splash/splash_bloc.dart';
import 'package:Bcom/application/tcontroller/tcontroller_bloc.dart';
import 'package:Bcom/application/user/repositories/user_repository.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:connectivity/connectivity.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:Bcom/application/tcontroller/repositories/tcontroller_repo.dart';

import 'package:Bcom/infrastructure/_commons/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final db = await new DatabaseCubit();
  GetStorage box = GetStorage();
  sl.registerFactory(() => Connectivity());
  sl.registerLazySingleton<IAppRequests>(() => AppRequests());
  sl.registerLazySingleton<INetworkInfo>(() => NetworkInfo(connectivity: sl()));
  sl.registerLazySingleton<GetStorage>(() => box);
  sl.registerLazySingleton<DatabaseCubit>(() => db);
  sl..registerFactory(() => SplashBloc(database: sl()));

  sl
    ..registerFactory(() => UserBloc(userRepo: sl(), database: sl()))
    ..registerLazySingleton(() => UserRepo(apiClient: sl()));

  sl..registerFactory(() => HomeBloc(database: sl()));

  sl
    ..registerFactory(() => BikerBloc(bikerRepo: sl(), database: sl()))
    ..registerLazySingleton(() => BikerRepo(apiClient: sl()));
  sl
    ..registerFactory(
        () => TcontrollerBloc(tcontrollerRepo: sl(), database: sl()))
    ..registerLazySingleton(() => TcontrollerRepo(apiClient: sl()));
  requestPermission();
  initConnected();
}

void initConnected() async {
  sl.registerFactory(() => ConnectedBloc());
}

Future<void> initLoad(context) async {
  BlocProvider.of<HomeBloc>(context).add(UserDataEvent());
  BlocProvider.of<UserBloc>(context)
    ..add(GetUserEvent())
    ..add(GetVilleQuartier());
  initLoadBiker(context);
  initLoadTControl(context);
}

Future<void> initLoadTControl(context) async {
  BlocProvider.of<TcontrollerBloc>(context)
    ..add(GetListMissionTcontroller())
    ..add(GetListMissionTcontrollerDone());
}

Future<void> initLoadBiker(context) async {
  BlocProvider.of<BikerBloc>(context)
    ..add(GetListMissionBiker())
    ..add(GetListMissionBikerEffectue());
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
