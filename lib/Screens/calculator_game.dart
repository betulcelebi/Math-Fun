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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  visibility = true;
                });
              },
              icon: Icon(Icons.pause))
        ],
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 110),
              child: Image.asset("assets/trophy.png"),
              width: 25,
            ),
            Text("")
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 8),
                        alignment: Alignment.center,
                        child: Text(
                          "CALCULATOR",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )),
                    IconButton(
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 300,
                                color: Color.fromARGB(255, 173, 173, 173),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text('Modal BottomSheet'),
                                      Container(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.lightGreen,
                                          ),
                                          child: const Text('GOT IT!'),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.info, color: Colors.white))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                width: 80,
                height: 21,
                //color: Colors.red,
                child: Text(
                  "10 * 8",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 200,
                height: 40,
                //color: Colors.grey.shade400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 75, 74, 74),
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
          visibility == true
              ? Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 220,
                    height: 150,
                    color: Color.fromARGB(255, 160, 158, 158),
                    child: Column(
                      children: [
                        Text(
                          "Game Over!!!",
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                visibility = false;
                              });
                            },
                            icon: Icon(Icons.circle))
                      ],
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
