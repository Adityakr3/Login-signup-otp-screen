import 'package:flutter/material.dart';

import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/splash_screen.dart';

import 'Signup.dart';
import 'Otpage.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreen(),
      '/Signup': (context) => const Signup(),
      '/LoginScreen': (context) => const LoginScreen(),
      '/Otpage': (context) => const Otpage(),
    },
  ));
}
