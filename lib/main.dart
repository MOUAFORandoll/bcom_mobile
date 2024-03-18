import 'package:Bcom/application/connected/connected_bloc.dart';
import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/splash/splash_bloc.dart';
import 'package:Bcom/application/biker/repositories/biker_repo.dart';

import 'package:Bcom/application/user/repositories/user_repository.dart';

import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'infrastructure/_commons/network/env_config.dart';
import 'presentation/_commons/theming/app_theme.dart';
import 'routes/app_router.dart';
import 'core.dart' as co;
import 'core.dart';
import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/application/tcontroller/repositories/tcontroller_repo.dart';
import 'package:Bcom/application/tcontroller/repositories/tcontroller_repo.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await EnvManager().init(env: Environment.prod);

  co.init();

  // NotificationService().initializePlatformNotifications();
  configLoading();
  runApp(
    EasyLocalization(
        supportedLocales: supportedLocales,
        path: 'assets/translations',
        fallbackLocale: const Locale('fr', 'FR'),
        child: Phoenix(child: AppContent())),
  );
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false
    ..customAnimation = CustomAnimation();
}

class CustomAnimation extends EasyLoadingAnimation {
  CustomAnimation();

  @override
  Widget buildWidget(
    Widget child,
    AnimationController controller,
    AlignmentGeometry alignment,
  ) {
    return Opacity(
      opacity: controller.value,
      child: RotationTransition(
        turns: controller,
        child: child,
      ),
    );
  }
}

var supportedLocales = const [
  Locale('en', 'US'),
  Locale('fr', 'FR'),
];

class AppContent extends StatelessWidget {
  AppContent({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => sl<ConnectedBloc>()),
          BlocProvider<AppActionCubit>(
            create: (BuildContext context) => AppActionCubit(),
          ),
          BlocProvider<DatabaseCubit>(
            create: (BuildContext context) => DatabaseCubit(),
          ),
          BlocProvider<BikerBloc>(
            create: (BuildContext context) => BikerBloc(
              bikerRepo: sl.get<BikerRepo>(),
              database: sl.get<DatabaseCubit>(),
            ),
          ),
          BlocProvider<UserBloc>(
            create: (BuildContext context) => UserBloc(
                userRepo: sl.get<UserRepo>(),
                database: sl.get<DatabaseCubit>()),
          ),
          BlocProvider<TcontrollerBloc>(
            create: (BuildContext context) => TcontrollerBloc(
              tcontrollerRepo: sl.get<TcontrollerRepo>(),
              database: sl.get<DatabaseCubit>(),
            ),
          ),
          BlocProvider<SplashBloc>(
            create: (BuildContext context) =>
                SplashBloc(database: sl.get<DatabaseCubit>()),
          ),
          BlocProvider<HomeBloc>(
            create: (BuildContext context) =>
                HomeBloc(database: sl.get<DatabaseCubit>()),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
          title: 'Bcom',
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: (_, router) {
            return EasyLoading.init()(
                context,
                ResponsiveBreakpoints.builder(
                  breakpoints: const [
                    Breakpoint(start: 0, end: 450, name: MOBILE),
                    Breakpoint(start: 451, end: 800, name: TABLET),
                    Breakpoint(start: 801, end: 1920, name: DESKTOP),
                    Breakpoint(start: 1921, end: double.infinity, name: 'XL'),
                  ],
                  child: ClampingScrollWrapper.builder(context, router!),
                ));
          },
          theme: lightTheme(context),
        ));
  }
}