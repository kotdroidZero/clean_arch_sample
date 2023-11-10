import 'package:flutter/material.dart';

import '../../../../core/values/app_strings.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Labels.appName} => Welcome Page'),
          ],
        ),
      ),
    );
  }
}
