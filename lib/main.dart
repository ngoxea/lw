import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lw/presentation/pages/auth/login_page.dart';
import 'package:lw/presentation/pages/welcome/welcome_page.dart';
import 'package:lw/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440.0, 855.0), 
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        title: 'LW Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routes: Routes.getRoutes(),
        home: const WelcomePage(),
      ),
    );
  }
}