import 'package:flutter/material.dart';
import 'package:flutter_application_1/otpage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
                  leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const Otpage()));
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          backgroundColor: Colors.white,
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
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(163, 147, 221, 105)),
                )),
            Positioned(
              top: 250,
              child: Container(
                height: 360,
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
                              "Welcome !",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(223, 0, 0, 0)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Create your account for a seamless exprience ",
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
                              prefixIcon: Icon(Icons.account_circle_outlined
,
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
                              hintText: " First Name"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle_outlined,
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
                              hintText: "Last Name "),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined,
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
                              hintText: "Email"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 560,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                  height: 80,
                  width: 80,
                  padding:  const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Center(
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(227, 134, 174, 96),
                          borderRadius: BorderRadius.circular(75)),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 38,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
