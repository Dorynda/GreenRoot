import 'package:flutter/material.dart';
import 'package:my_greenroot_app/main_navigation.dart';
import 'package:my_greenroot_app/splash.dart';
import 'package:my_greenroot_app/signup.dart';
import 'package:my_greenroot_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      // Use Splash as home if you want a splash screen, otherwise use MainNavigation
      home: const Splash(),
      routes: {
        '/splash': (context) => const Splash(),
        '/signup': (context) => const SignupPage(),
        '/login': (context) => const Login(),
        '/main': (context) => const MainNavigation(),
      },
    );
  }
}
