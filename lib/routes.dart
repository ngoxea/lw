import 'package:flutter/material.dart';
import 'package:lw/presentation/pages/auth/login_page.dart';
import 'package:lw/presentation/pages/auth/registration_page.dart';

class Routes {
  static const String login = '/login';
  static const String registration = '/registration';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => const LoginPage(),
      registration: (context) => const RegistrationPage(),
    };
  }
}
