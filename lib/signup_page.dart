import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.white,
                Colors.white70,
                Colors.lightBlueAccent,
                // Colors.lightBlue,
                Colors.blue,
              ])),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset(
                'images/logo.png',
              ),
              // SizedBox(
              //   height: 15,
              // ),
              // Text(
              //   "Waves",
              //   style: TextStyle(
              //     color: Colors.lightBlueAccent,
              //     fontSize: 25,
              //   ),
              // ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 450,
                  width: 325,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Let's Get Started!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "Full Name",
                              suffixIcon: Icon(
                                FontAwesomeIcons.user,
                                size: 15,
                              )),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "Email Address",
                              suffixIcon: Icon(
                                FontAwesomeIcons.envelope,
                                size: 15,
                              )),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              suffixIcon: Icon(
                                FontAwesomeIcons.eyeSlash,
                                size: 15,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: 250,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 2,
                                ),
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    // Colors.white70,
                                    Colors.lightBlueAccent,
                                    Colors.lightBlue,
                                  ]),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              // decoration: TextDecoration.underline,
                              color: Colors.transparent,
                              decorationColor: Colors.black,
                              shadows: [
                                Shadow(
                                    color: Colors.black, offset: Offset(0, -5))
                              ],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
