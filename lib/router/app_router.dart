import 'package:auto_route/auto_route.dart';
import 'package:trendify/router/app_router.dart';
import 'package:trendify/ui/auth/login/ui/otp_page.dart';

import '../core/locator/locator.dart';
import '../ui/auth/login/ui/forgot_password_page.dart';
import '../ui/auth/login/ui/login_page.dart';
import '../ui/auth/login/ui/reset_password_page.dart';
import '../ui/auth/login/ui/welcome_page.dart';
import '../ui/auth/sign_up/sign_up_page.dart';
import '../ui/home/favorites_page.dart';
import '../ui/home/home_page.dart';
import '../ui/splash/splash_page.dart';
import '../ui/home/browse_categories.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: ForgotPasswordRoute.page),
    AutoRoute(page: OtpRoute.page),
    AutoRoute(page: ResetPasswordRoute.page),
    AutoRoute(page: FavoritesRoute.page),
    AutoRoute(page: BrowseCategoriesRoute.page),
  ];
}


final appRouter = locator<AppRouter>();