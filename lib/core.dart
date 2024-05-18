import 'package:Bcom/application/callcenter/callcenter_bloc.dart';
import 'package:Bcom/application/callcenter/repositories/callcenterRepo.dart';
import 'package:Bcom/application/connected/connected_bloc.dart';
import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/export_bloc.dart';

import 'package:Bcom/application/devis/repositories/devis_repo.dart';
import 'package:Bcom/application/model/data/MessageModel.dart';
import 'package:Bcom/application/splash/splash_bloc.dart';
import 'package:Bcom/application/user/repositories/user_repository.dart';
import 'package:Bcom/infrastructure/_commons/network/app_requests.dart';
import 'package:Bcom/routes/app_router.dart';
import 'package:Bcom/utils/Services/NotificationService.dart';
import 'package:Bcom/utils/Services/SocketService.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:connectivity/connectivity.dart';
import 'package:permission_handler/permission_handler.dart';

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
    ..registerFactory(() => DevisBloc(devisRepo: sl(), database: sl()))
    ..registerLazySingleton(() => DevisRepo(apiClient: sl()));
  sl.registerSingleton<AppRouter>(AppRouter());
  sl
    ..registerFactory(
        () => CallCenterBloc(callcenterRepo: sl(), database: sl()))
    ..registerLazySingleton(() => CallCenterRepo(apiClient: sl()));
  requestPermission();
  initConnected();
}

Future<void> initSocket(context) async {
  var database = sl.get<DatabaseCubit>();
  var key = await database.getKey();

  SocketService().callCenter(
      recepteur: key!,
      action: (data) {
        // BlocProvider.of<CompteBloc>(context).add(HistoriqueTransaction());

        context.get<CallCenterBloc>().add(GetMessage());

        NotificationService().callCenterNotification(
            content: MessageModel.fromJson(data), context: context);
      });
}

void initConnected() async {
  sl.registerFactory(() => ConnectedBloc());
}

Future<void> initLoad(context) async {
  BlocProvider.of<HomeBloc>(context).add(UserDataEvent());
  BlocProvider.of<DevisBloc>(context).add(GetListPack());
  BlocProvider.of<UserBloc>(context)
    ..add(GetUserEvent())
    ..add(GetVilleQuartier());

  BlocProvider.of<CallCenterBloc>(context).add(CallCenterEvent.getMessage());

  initLoadDevis(context);
}

Future<void> initLoadDevis(context) async {
  BlocProvider.of<DevisBloc>(context);
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
