
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/configs/app_routes.dart';
import '../../../../sample_aaplication.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  void _handleLogin() {
    String username = usernameController.text;
    String password = passwordController.text;

    // You can add your authentication logic here
    // For a simple example, let's just print the entered values
    if (kDebugMode) {
      print('Username: $username');
      print('Password: $password');
    }

    navigatorMainKey.currentState?.pushNamedAndRemoveUntil(
      AppRoutes.dashboardPage,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: _handleLogin,
                child: const Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  navigatorMainKey.currentState
                      ?.pushNamed(AppRoutes.signupPage);
                },
                child: const Text('No Account? Signup Now.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
