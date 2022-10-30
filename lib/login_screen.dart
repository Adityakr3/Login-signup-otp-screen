
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  body() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 10,
              ),
              Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      CircleAvatar(
                          radius: 90.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage("assets/App.png")),
                      Padding(padding: EdgeInsets.only(top: 255.0)),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )),
            Positioned(
                top: 450,
                child: Container(
                  height: 550,
                  width: MediaQuery.of(context).size.width,
                  // ignore: prefer_const_constructors
                  decoration:
                      const BoxDecoration(color: Color.fromARGB(163, 147, 221, 105)),
                )),
            Positioned(
              top: 250,
              child: Container(
                height: 350,
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width - 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 118, 160, 90)
                              .withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Welcome to Kapiva",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(224, 214, 111, 102)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Enter your mobile number and we will send "
                              "\n              you an Otp for verification",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.flag_outlined,
                                  size: 35,
                                  color: Color.fromARGB(255, 80, 162, 76)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 114, 201, 83))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 114, 201, 83))),
                              hintText: " +91"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone,
                                  size: 28,
                                  color: Color.fromARGB(255, 80, 162, 76)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 114, 201, 83))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 114, 201, 83))),
                              hintText: "Mobile number "),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 550,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(90)),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(227, 134, 174, 96),
                            borderRadius: BorderRadius.circular(55)
                          ),
                          child: const Icon(Icons.arrow_forward,color:Colors.white,size: 38,),
                        ),
                  ),
                ),
              )
          ],
        ));
  }
}
