// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:Bcom/presentation/biker/mission_page.dart' as _i4;
import 'package:Bcom/presentation/home/home_page.dart' as _i3;
import 'package:Bcom/presentation/layer/onboardingpage.dart' as _i6;
import 'package:Bcom/presentation/layer/splashpage.dart' as _i9;
import 'package:Bcom/presentation/tcontroller/tcontroller_home_page.dart'
    as _i10;
import 'package:Bcom/presentation/user/auth_page.dart' as _i1;
import 'package:Bcom/presentation/user/forgot_password_page.dart' as _i2;
import 'package:Bcom/presentation/user/politique_page.dart' as _i7;
import 'package:Bcom/presentation/user/register_page.dart' as _i8;
import 'package:Bcom/presentation/user/user_info_page.dart' as _i11;
import 'package:Bcom/test.dart' as _i5;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ForgotPasswordPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    MissionSessionRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MissionSessionPage(),
      );
    },
    MyTestRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MyTestPage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardingPage(),
      );
    },
    PolitiqueRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PolitiquePage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.RegisterPage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreenPage(),
      );
    },
    TcontrollerHomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TcontrollerHomePage(),
      );
    },
    UserInfoRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UserInfoPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i12.PageRouteInfo<void> {
  const AuthRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MissionSessionPage]
class MissionSessionRoute extends _i12.PageRouteInfo<void> {
  const MissionSessionRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MissionSessionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MissionSessionRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MyTestPage]
class MyTestRoute extends _i12.PageRouteInfo<void> {
  const MyTestRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MyTestRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyTestRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardingPage]
class OnBoardingRoute extends _i12.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PolitiquePage]
class PolitiqueRoute extends _i12.PageRouteInfo<void> {
  const PolitiqueRoute({List<_i12.PageRouteInfo>? children})
      : super(
          PolitiqueRoute.name,
          initialChildren: children,
        );

  static const String name = 'PolitiqueRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RegisterPage]
class RegisterRoute extends _i12.PageRouteInfo<void> {
  const RegisterRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashScreenPage]
class SplashScreenRoute extends _i12.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TcontrollerHomePage]
class TcontrollerHomeRoute extends _i12.PageRouteInfo<void> {
  const TcontrollerHomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TcontrollerHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TcontrollerHomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UserInfoPage]
class UserInfoRoute extends _i12.PageRouteInfo<void> {
  const UserInfoRoute({List<_i12.PageRouteInfo>? children})
      : super(
          UserInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInfoRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
