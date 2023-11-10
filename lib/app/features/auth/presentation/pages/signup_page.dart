
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/configs/app_routes.dart';
import '../../../../core/values/app_colors.dart';
import '../../../../sample_aaplication.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignupPage({super.key});

  void _handleSignup() {
    String username = usernameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    // You can add your signup/registration logic here
    // For a simple example, let's just print the entered values
    if (kDebugMode) {
      print('Username: $username');
      print('Email: $email');
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
      appBar: AppBar(
        backgroundColor: AppColors.trasnparent,
        elevation: 0,
        title: const Text(
          'Signup Page',
          style: TextStyle(
            color: AppColors.primary,
          ),
        ),
      ),
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
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: _handleSignup,
                child: const Text('Signup'),
              ),
              TextButton(
                onPressed: () {
                  navigatorMainKey.currentState?.pop();
                },
                child: const Text('Have Accountt? Login Now.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
