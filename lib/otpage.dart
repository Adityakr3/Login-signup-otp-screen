import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signup.dart';
import 'package:flutter_application_1/login_screen.dart';

class Otpage extends StatefulWidget {
  const Otpage({super.key});

  @override
  State<Otpage> createState() => _OtpageState();
}

class _OtpageState extends State<Otpage> {
  get textOneCtrl => null;

  get ture => null;

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
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'OTP',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' Verification',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        body: Stack(fit: StackFit.expand, children: [
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
            top: 280,
            child: Container(
              height: 320,
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 9,
                          ),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                              text: "Verify your phone number using the OTP",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                          const SizedBox(
                            height: 2,
                          ),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "sent to the number",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(228, 0, 0, 0),
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: " +91****8789",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 208, 67, 16),
                                    fontWeight: FontWeight.bold))
                          ]))
                        ],
                      ),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 49,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: TextFormField(
                          controller: textOneCtrl,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: '',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 3,
                                      color:
                                          Color.fromARGB(163, 147, 221, 105)),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "",
                              hintStyle: const TextStyle(
                                fontSize: 25,
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: TextFormField(
                          controller: textOneCtrl,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: '',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 3,
                                      color:
                                          Color.fromARGB(163, 147, 221, 105)),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "",
                              // ignore: prefer_const_constructors
                              hintStyle: TextStyle(
                                fontSize: 25,
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: TextFormField(
                          controller: textOneCtrl,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: '',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 3,
                                      color:
                                          Color.fromARGB(163, 147, 221, 105)),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: " ",
                              // ignore: prefer_const_constructors
                              hintStyle: TextStyle(
                                fontSize: 25,
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: TextFormField(
                          controller: textOneCtrl,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              counterText: '',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 3,
                                      color:
                                          Color.fromARGB(163, 147, 221, 105)),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: " ",
                              // ignore: prefer_const_constructors
                              hintStyle: TextStyle(
                                fontSize: 25,
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "Back to login ?",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(226, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: " Resend OTP",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 208, 67, 16),
                      ),
                    ),
                  ]))
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
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()));
                    },
                    child: Center(
                      child: Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(227, 134, 174, 96),
                              borderRadius: BorderRadius.circular(75)),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 38,
                          )),
                    ),
                  ),
                ),
              ))
        ]));
  }
}
