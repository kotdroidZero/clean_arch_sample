import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/auth/presentation/pages/welcome_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/splash/presentation/page/splash_page.dart';

class AppRoutes {
  static const String splashPage = 'splashPage';
  static const String welcomePage = 'welcomePage';
  static const String loginPage = 'loginPage';
  static const String signupPage = 'signupPage';

  static const String dashboardPage = 'dashboardPage';
}

class RoutesHelper {
  static Route? onGeneratingRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashPage:
        {
          return fadeInRouteBuilder(const SplashPage());
        }
      case AppRoutes.welcomePage:
        {
          return fadeInRouteBuilder(const WelcomePage());
        }
      case AppRoutes.loginPage:
        {
          return fadeInRouteBuilder(LoginPage());
        }
      case AppRoutes.signupPage:
        {
          return fadeInRouteBuilder(SignupPage());
        }
      case AppRoutes.dashboardPage:
        {
          return fadeInRouteBuilder(const DashboardPage());
        }
    }
    return null;
  }
}

CupertinoPageRoute fadeInRouteBuilder(
  Widget child,
) {
  return CupertinoPageRoute(builder: (context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.transparent,
        ),
        child,
      ],
    );
  });
}
