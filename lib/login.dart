import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2260FF),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                width: 420,
                top: 55,
                left: 0,
                child: Image.asset(
                  "assets/math_fun.png",
                  scale: 0.8,
                ),
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  // color: Colors.amber,
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(top: 450),
                  child: Image.asset("assets/rev_1.png")),
              Positioned(
                width: 360,
                top: 310,
                left: 40,
                child: Image.asset(
                  "assets/einstein_1.png",
                  scale: 0.8,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 580, left: 130),
                width: 130,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff98DA42),
                        style: BorderStyle.solid,
                        strokeAlign: StrokeAlign.inside),
                    color: Color(0xff79CA01),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 98, 163, 1),
                          blurRadius: 8.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            1.0,
                            3.0,
                          ),
                          blurStyle: BlurStyle.inner)
                    ]),
                child: Text(
                  "Play",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
              ),
              Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(top: 739.5),
                  child: Image.asset(
                    "assets/rev_2.png",
                    scale: 0.9,
                  )),
              Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(left: 0, top: 633),
                  child: Image.asset(
                    "assets/rev_3.png",
                    scale: 1.25,
                  )),
              Positioned(
                  top: 680, left: 240, child: Image.asset("assets/potion.png")),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 645, left: 130),
                width: 130,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 251, 101, 106),
                        style: BorderStyle.solid,
                        strokeAlign: StrokeAlign.inside),
                    color: Color(0xffF63B42),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 205, 49, 54),
                          blurRadius: 8.0,
                          spreadRadius: 5.0,
                          offset: Offset(
                            1.0,
                            3.0,
                          ),
                          blurStyle: BlurStyle.inner)
                    ]),
                child: Text(
                  "Quit",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
