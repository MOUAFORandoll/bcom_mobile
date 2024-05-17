import 'package:Bcom/application/connected/connected_bloc.dart';
import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/application/splash/splash_bloc.dart';
import 'package:Bcom/application/biker/repositories/biker_repo.dart';

import 'package:Bcom/application/user/repositories/user_repository.dart';
import 'package:Bcom/core.dart';
import 'package:Bcom/presentation/_commons/theming/app_theme.dart';

import 'package:Bcom/presentation/components/exportcomponent.dart';
import 'package:Bcom/routes/app_router.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AppContent extends StatelessWidget {
  AppContent({super.key});
  final _appRouter = sl.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
        theme: lightTheme(context));
  }
}
