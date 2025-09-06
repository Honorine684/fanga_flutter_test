import 'package:auto_route/auto_route.dart';

import '../../auth/sign_in/login.dart';
import '../../home/home.dart';
import '../../splash/splash.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: SplashRoute.page,
      initial: true,
      path: SplashPage.routeName,
    ),
    AutoRoute(page: HomeRoute.page, path: HomePage.routeName),
    AutoRoute(page: LoginRoute.page, path: LoginPage.routeName),
  ];
}
