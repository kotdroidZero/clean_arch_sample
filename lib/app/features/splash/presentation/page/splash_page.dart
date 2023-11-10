import 'package:flutter/material.dart';

import '../../../../core/configs/app_routes.dart';
import '../../../../core/values/app_strings.dart';
import '../../../../sample_aaplication.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), navigateToNext);
  }

  /// Put your own logic
  navigateToNext() {
    var isLoggedIn = false;
    var isFirstTime = false;

    if (isLoggedIn) {
      /// Navigate to Dashbaord
      navigatorMainKey.currentState?.pushNamedAndRemoveUntil(
        AppRoutes.dashboardPage,
        (route) => false,
      );
    } else {
      if (isFirstTime) {
        /// Navigate To Welcome Screen
        navigatorMainKey.currentState?.pushNamedAndRemoveUntil(
          AppRoutes.welcomePage,
          (route) => false,
        );
      } else {
        /// Navigate to Login Screen
        navigatorMainKey.currentState?.pushNamedAndRemoveUntil(
          AppRoutes.loginPage,
          (route) => false,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Labels.appName} => Splash Page'),
          ],
        ),
      ),
    );
  }
}
