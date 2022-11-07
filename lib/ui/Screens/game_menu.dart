import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:math_game_b/Screens/calculator_game.dart';

class GameMenuScreen extends StatefulWidget {
  const GameMenuScreen({super.key});

  @override
  State<GameMenuScreen> createState() => _GameMenuScreenState();
}

class _GameMenuScreenState extends State<GameMenuScreen> {
  List<String> gameMenulist = [
    "Calculator",
    "Guess the sign",
    "Correct answer",
    "Quick calculation"
  ];
  List<String> gameImageList = [
    "assets/hour-glass.png",
    "assets/question-mark.png",
    "assets/check-mark.png",
    "assets/flash.png",
  ];
  List<String> gamePlayButton = [
    "assets/play.png",
    "assets/play.png",
    "assets/play.png",
    "assets/play.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9FF4FE),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Image.asset(
              "assets/arrow-left.png",
              width: 32,
            )),
        backgroundColor: Color(0xff9FF4FE),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(top: 5, left: 21),
              width: 200,
              height: 32,
              //color: Colors.red,
              child: Text(
                "Math Puzzle",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              )),
          Container(
              margin: EdgeInsets.only(left: 21, top: 8),
              width: 250,
              height: 50,
              //color: Colors.amber,
              child: Text(
                "Each game with simple calculation with different approach",
                style: TextStyle(
                    color: Color.fromARGB(255, 47, 106, 202).withOpacity(0.8),
                    fontSize: 13),
                textAlign: TextAlign.start,
              )),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.topLeft,
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                padding: EdgeInsets.only(left: 10, top: 5),
                width: 250,
                height: 130,
                decoration: BoxDecoration(
                    color: Color(0xff74C90F),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Color.fromARGB(255, 23, 104, 25).withOpacity(0.7),
                          blurRadius: 8.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            1.0,
                            4.0,
                          ),
                          blurStyle: BlurStyle.inner)
                    ],
                    border: Border.all(
                        color: Color.fromARGB(255, 172, 233, 98),
                        style: BorderStyle.solid,
                        strokeAlign: StrokeAlign.inside,
                        width: 2)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20, top: 10),
                          width: 70,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff95DB42),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.zero,
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 23, 104, 25)
                                        .withOpacity(0.7),
                                    blurRadius: 8.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                    blurStyle: BlurStyle.inner)
                              ],
                              border: Border.all(
                                  color: Color.fromARGB(255, 172, 233, 98),
                                  style: BorderStyle.solid,
                                  strokeAlign: StrokeAlign.inside,
                                  width: 2)),
                          child: Image.asset(
                            gameImageList[index],
                            color: Colors.white,
                            width: 25,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20, top: 10),
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff95DB42),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 23, 104, 25)
                                        .withOpacity(0.7),
                                    blurRadius: 8.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(
                                      1.0,
                                      4.0,
                                    ),
                                    blurStyle: BlurStyle.inner)
                              ],
                              border: Border.all(
                                  color: Color.fromARGB(255, 172, 233, 98),
                                  style: BorderStyle.solid,
                                  strokeAlign: StrokeAlign.inside,
                                  width: 2)),
                          child: Text(gameMenulist[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        )
                      ],
                    ),
                    Container(
                      width: 300,
                      height: 1.5,
                      margin: EdgeInsets.only(top: 16, left: 20, right: 30),
                      color: Color.fromARGB(255, 172, 233, 98).withOpacity(0.8),
                    ),
                    Container(
                      width: 300,
                      height: 30,
                      //color: Colors.red,
                      margin: EdgeInsets.only(top: 8, left: 20, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //color: Colors.amber,
                            width: 70,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Score: ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset(
                                  "assets/champion.png",
                                  width: 15,
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: index == 0
                                ? () {
                                    Navigator.push<void>(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const CalculatorGameScreen(),
                                      ),
                                    );
                                  }
                                : () {
                                    null;
                                  },
                            child: Image.asset(
                              gamePlayButton[index],
                              width: 25,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
