import 'package:flutter/material.dart';
import 'package:lw/presentation/pages/auth/login_page.dart';
import 'package:lw/presentation/pages/auth/registration_page.dart';
import 'package:lw/presentation/pages/password/change_password_page.dart';
import 'package:lw/presentation/pages/password/forgot_password_page.dart';
import 'package:lw/presentation/pages/welcome/welcome_page.dart';

class Routes {
  static const String login = '/login';
  static const String registration = '/registration';
  static const String forgotPassword = '/forgot-password';
  static const String changePassword = '/change-password';
  static const String welcome = '/welcome';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => const LoginPage(),
      registration: (context) => const RegistrationPage(),
      forgotPassword: (context) => const ForgotPasswordPage(),
      changePassword: (context) => const ChangePasswordPage(),
      welcome: (context) => const WelcomePage(),
    };
  }
}
