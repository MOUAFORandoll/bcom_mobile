import 'package:Bcom/presentation/devis/PaiementPage.dart';
import 'package:Bcom/presentation/devis/command_devis_page.dart';
import 'package:Bcom/presentation/home/home_page.dart';
import 'package:Bcom/presentation/layer/onboardingpage.dart';
import 'package:Bcom/presentation/user/auth_page.dart';
import 'package:Bcom/presentation/user/forgot_password_page.dart';
import 'package:Bcom/presentation/user/register_page.dart';
import 'package:auto_route/auto_route.dart';

import '../presentation/devis/SuccesDevisPage.dart';
import '../presentation/layer/splashpage.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  List<AutoRoute> get routes => [
        AutoRoute(
            page: SplashScreenRoute.page,
            initial: true,
            path: SplashScreenPage.routeName),
        AutoRoute(page: OnBoardingRoute.page, path: OnBoardingPage.routeName),
        AutoRoute(page: AuthRoute.page, path: AuthPage.routeName),
        AutoRoute(page: RegisterRoute.page, path: RegisterPage.routeName),
        AutoRoute(
            page: ForgotPasswordRoute.page, path: ForgotPasswordPage.routeName),
        AutoRoute(page: HomeRoute.page, path: HomePage.routeName),
        AutoRoute(
            page: CommandDevisRoute.page, path: CommandDevisPage.routeName),
        AutoRoute(page: SuccesDevisRoute.page, path: SuccesDevisPage.routeName),
        AutoRoute(page: PaimentRoute.page, path: PaimentPage.routeName),
      
      ];
}
