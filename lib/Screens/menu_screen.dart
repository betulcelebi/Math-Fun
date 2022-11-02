import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_game_b/Screens/game_menu.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<String> gameList = ["Math Puzzle", "Memory Puzzle", "Train Your Brain"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9FF4FE),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 24),
                  padding: EdgeInsets.all(0),
                  child: Image.asset("assets/vector.png")),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 28),
                      width: 150,
                      height: 65,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 17),
                            width: 150,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color(0xff0498FF),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Color(0xff5FDDFE), width: 5)),
                          ),
                          Positioned(
                              width: 55,
                              bottom: 7,
                              child: Image.asset("assets/star.png")),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 150,
                      height: 65,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 17),
                            width: 150,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color(0xff0498FF),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Color(0xff5FDDFE), width: 5)),
                          ),
                          Positioned(
                              width: 55,
                              bottom: 0,
                              child: Image.asset("assets/medal.png")),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 15),
            //color: Colors.white,
            width: 300,
            height: 80,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/giftbox.png",
                        width: 40,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Free Gifts",
                            style: TextStyle(
                                color: Color.fromARGB(255, 47, 106, 202),
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 8),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff5DDEFE),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Color.fromARGB(255, 143, 225, 235),
                            width: 1)),
                    child: Text("Let's put your math skills to test",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 47, 106, 202)
                                .withOpacity(0.7),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/crown.png",
                        width: 46,
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Premium",
                            style: TextStyle(
                                color: Color.fromARGB(255, 47, 106, 202),
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ]),
          ),
          SizedBox(
            width: 330,
            height: 330,
            child: ListView.builder(
              itemCount: 3,
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Color(0xff74C90F),
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
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 15),
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
                          "assets/plus.png",
                          color: Colors.white,
                          width: 25,
                        ),
                      ),
                      GestureDetector(
                        onTap: index == 0
                            ? () {
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const GameMenuScreen(),
                                  ),
                                );
                              }
                            : () {
                                null;
                              },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 15),
                          width: 180,
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
                          child: Text(gameList[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              // color: Colors.black,
              margin: EdgeInsets.only(left: 180),
              height: 244.5,
              child: Image.asset(
                "assets/einstein_2.png",
                width: 310,
              ))
        ],
      ),
    );
  }
}
