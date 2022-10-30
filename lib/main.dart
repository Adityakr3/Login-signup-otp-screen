import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/splash_screen.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     routes: {
      '/':(context) => const SplashScreen(),
      '/LoginScreen':(context) => const LoginScreen(),
     },
  ));
}
