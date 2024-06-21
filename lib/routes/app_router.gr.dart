// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:Bcom/presentation/components/Widget/shimmer_home_page.dart'
    as _i11;
import 'package:Bcom/presentation/devis/command_devis_page.dart' as _i2;
import 'package:Bcom/presentation/devis/historique_demande_devis_page.dart'
    as _i5;
import 'package:Bcom/presentation/devis/PaiementPage.dart' as _i9;
import 'package:Bcom/presentation/devis/SuccesDevisPage.dart' as _i13;
import 'package:Bcom/presentation/home/home_page.dart' as _i6;
import 'package:Bcom/presentation/layer/onboardingpage.dart' as _i8;
import 'package:Bcom/presentation/layer/splashpage.dart' as _i12;
import 'package:Bcom/presentation/user/auth_page.dart' as _i1;
import 'package:Bcom/presentation/user/complete_info_page.dart' as _i3;
import 'package:Bcom/presentation/user/forgot_password_page.dart' as _i4;
import 'package:Bcom/presentation/user/register_page.dart' as _i10;
import 'package:Bcom/test.dart' as _i7;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    CommandDevisRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CommandDevisPage(),
      );
    },
    CompleteEntrepriseInfoRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CompleteEntrepriseInfoPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ForgotPasswordPage(),
      );
    },
    HistoriqueDemandeDevisRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HistoriqueDemandeDevisPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    MyTestRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MyTestPage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OnBoardingPage(),
      );
    },
    PaimentRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PaimentPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.RegisterPage(),
      );
    },
    ShimmerHomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ShimmerHomePage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SplashScreenPage(),
      );
    },
    SuccesDevisRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SuccesDevisPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i14.PageRouteInfo<void> {
  const AuthRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CommandDevisPage]
class CommandDevisRoute extends _i14.PageRouteInfo<void> {
  const CommandDevisRoute({List<_i14.PageRouteInfo>? children})
      : super(
          CommandDevisRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommandDevisRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompleteEntrepriseInfoPage]
class CompleteEntrepriseInfoRoute extends _i14.PageRouteInfo<void> {
  const CompleteEntrepriseInfoRoute({List<_i14.PageRouteInfo>? children})
      : super(
          CompleteEntrepriseInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompleteEntrepriseInfoRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ForgotPasswordPage]
class ForgotPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HistoriqueDemandeDevisPage]
class HistoriqueDemandeDevisRoute extends _i14.PageRouteInfo<void> {
  const HistoriqueDemandeDevisRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HistoriqueDemandeDevisRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoriqueDemandeDevisRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MyTestPage]
class MyTestRoute extends _i14.PageRouteInfo<void> {
  const MyTestRoute({List<_i14.PageRouteInfo>? children})
      : super(
          MyTestRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyTestRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OnBoardingPage]
class OnBoardingRoute extends _i14.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i14.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PaimentPage]
class PaimentRoute extends _i14.PageRouteInfo<void> {
  const PaimentRoute({List<_i14.PageRouteInfo>? children})
      : super(
          PaimentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaimentRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RegisterPage]
class RegisterRoute extends _i14.PageRouteInfo<void> {
  const RegisterRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ShimmerHomePage]
class ShimmerHomeRoute extends _i14.PageRouteInfo<void> {
  const ShimmerHomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ShimmerHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShimmerHomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SplashScreenPage]
class SplashScreenRoute extends _i14.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SuccesDevisPage]
class SuccesDevisRoute extends _i14.PageRouteInfo<void> {
  const SuccesDevisRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SuccesDevisRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuccesDevisRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
