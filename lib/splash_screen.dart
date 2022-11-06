import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() {
    var duration = const Duration(milliseconds: 2222);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(163, 147, 221, 105)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                        radius: 90.0,
                        backgroundColor: Color.fromARGB(0, 255, 255, 255),
                        backgroundImage: AssetImage("assets/App.png")),
                    // Padding(padding: EdgeInsets.only(top: 15.0)),
                    Text(
                      "Kapiva",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 145, 137),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
