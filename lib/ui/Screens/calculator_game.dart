import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorGameScreen extends StatefulWidget {
  const CalculatorGameScreen({super.key});

  @override
  State<CalculatorGameScreen> createState() => _CalculatorGameScreenState();
}

class _CalculatorGameScreenState extends State<CalculatorGameScreen> {
  bool visibility = false;
  List<String> numberList = [
    "assets/seven.png",
    "assets/eight.png",
    "assets/nine.png",
    "assets/four.png",
    "assets/five.png",
    "assets/six.png",
    "assets/one.png",
    "assets/two.png",
    "assets/three.png",
    "assets/eraser.png",
    "assets/zero.png",
    "assets/backspace.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9FF4FE),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff9FF4FE),
                      border: Border.all(color: Color(0xff9FF4FE)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            icon: Image.asset(
                              "assets/arrow-left.png",
                              width: 30,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/champion.png",
                              width: 30,
                            ),
                            Text("")
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                visibility = true;
                              });
                            },
                            icon: Icon(
                              Icons.pause,
                              size: 28,
                            ),
                            color: Colors.orangeAccent)
                      ],
                    ),
                  ),
                  Stack(
                    children: [Container(
                      margin: EdgeInsets.only(top: 70),
                      width: double.infinity,
                      height: 5,
                      color: Color.fromARGB(255, 47, 106, 202).withOpacity(0.8),
                    ), Container(
                      margin: EdgeInsets.only(top: 70),
                      width: 350,
                      height: 5, color: Colors.white,)],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        alignment: Alignment.center,
                        child: Text(
                          "CALCULATOR",
                          style: TextStyle(
                              color: Color.fromARGB(255, 47, 106, 202)
                                  .withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))),
                            backgroundColor: Color(0xff9FF4FE).withOpacity(0.8),
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 350,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                        'Square Root',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        width: 300,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/calculator-intro.gif"),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Text(
                                            "square root the given number",
                                            style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500),
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "1.0 for correct answer",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "-1.0 for wrong answer",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Container(
                                          margin: EdgeInsets.only(top: 10),
                                          decoration: BoxDecoration(
                                            color: Color(0xff74C90F),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color(0xff74C90F),
                                                  blurRadius: 5.0,
                                                  spreadRadius: 3.0,
                                                  offset: Offset(
                                                    1.0,
                                                    1.0,
                                                  ),
                                                  blurStyle: BlurStyle.inner)
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          width: 80,
                                          height: 40,
                                          child: const Text(
                                            'GOT IT!',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.info,
                            color: Color.fromARGB(255, 47, 106, 202)
                                .withOpacity(0.6),
                            size: 15,
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                width: 80,
                height: 24,
                //color: Colors.red,
                child: Text(
                  "10 * 8",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                width: 300,
                height: 60,
                //color: Colors.grey.shade400,
                decoration: BoxDecoration(
                    color: Color(0xff74C90F),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Color.fromARGB(255, 23, 104, 25).withOpacity(0.7),
                          blurRadius: 20.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            1.0,
                            10.0,
                          ),
                          blurStyle: BlurStyle.inner)
                    ],
                    border: Border.all(
                        color: Color.fromARGB(255, 172, 233, 98),
                        style: BorderStyle.solid,
                        strokeAlign: StrokeAlign.inside,
                        width: 2)),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 45),
                child: GridView.builder(
                  padding: EdgeInsets.all(0),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: numberList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          left: 15, right: 8, bottom: 2, top: 10),
                      padding: EdgeInsets.only(right: 5, left: 15, top: 15),
                      child: Image.asset(
                        numberList[index],
                        width: 45,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 23, 104, 25)
                                    .withOpacity(0.7),
                                blurRadius: 10.0,
                                spreadRadius: 4.0,
                                offset: Offset(
                                  1.0,
                                  10.0,
                                ),
                                blurStyle: BlurStyle.inner)
                          ],
                          border: Border.all(
                              color: Color.fromARGB(255, 172, 233, 98),
                              style: BorderStyle.solid,
                              strokeAlign: StrokeAlign.inside,
                              width: 2)),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
          visibility == true
              ? Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 280,
                    height: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 234, 194, 135),
                          Colors.orange,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange.withOpacity(0.8),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              4.0,
                              4.0,
                            ),
                            blurStyle: BlurStyle.solid)
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Game Over!!!",
                            style: TextStyle(
                                color: Color.fromARGB(255, 47, 106, 202),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text("Your highest recor is 0.0",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 47, 106, 202)
                                      .withOpacity(0.6))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xff74C90F),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xff74C90F),
                                        blurRadius: 5.0,
                                        spreadRadius: 3.0,
                                        offset: Offset(
                                          1.0,
                                          1.0,
                                        ),
                                        blurStyle: BlurStyle.inner)
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context, true);
                                  },
                                  child: Text(
                                    "RESTART",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xff74C90F),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xff74C90F),
                                        blurRadius: 5.0,
                                        spreadRadius: 3.0,
                                        offset: Offset(
                                          1.0,
                                          1.0,
                                        ),
                                        blurStyle: BlurStyle.inner)
                                  ],
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        visibility = false;
                                      });
                                    },
                                    icon: Image.asset(
                                      "assets/multiple.png",
                                      width: 15,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
