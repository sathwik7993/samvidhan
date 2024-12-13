// login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'home_page.dart';  // Import your HomePage here

class LoginScreen extends StatelessWidget {
  Duration get loginTime => const Duration(milliseconds: 2250);

  final users = {
    'user@example.com': 'password123',
    'admin@example.com': 'admin123',
  };

  LoginScreen({super.key});

  Future<String?> _authUser(LoginData data) async {
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not found';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null; // Authentication successful
    });
  }

  Future<String?> _signupUser(SignupData data) async {
    return Future.delayed(loginTime).then((_) {
      if (users.containsKey(data.name)) {
        return 'User already exists';
      }
      users[data.name!] = data.password!;
      return null; // Signup successful
    });
  }

  Future<String?> _recoverPassword(String name) async {
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not found';
      }
      return null; // Recovery successful
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'FireLogin',
      onLogin: _authUser,
      onSignup: _signupUser,
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(primaryColor: Colors.orange),
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomePage(), // Navigate to HomePage after login
        ));
      },
    );
  }
}
