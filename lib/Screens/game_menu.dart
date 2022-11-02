import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:math_game_b/Screens/calculator_game.dart';


class GameMenuScreen extends StatefulWidget {
  const GameMenuScreen({super.key});

  @override
  State<GameMenuScreen> createState() => _GameMenuScreenState();
}

class _GameMenuScreenState extends State<GameMenuScreen> {
  List<String>gameMenulist=["Calculator",
  "Guess the sign",
  "Correct answer",
  "Quick calculation"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.black,
      ),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
           width: 150,
           height: 30,
           //color: Colors.red,
            child: Text("Math Puzzle", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),)),
          Container(
            margin: EdgeInsets.only(left:5 ,top: 8),
            width: 300,
            height: 50,
           // color: Colors.amber,
            child: Text("Each game with simple alculation with different approach", style: TextStyle(color: Colors.grey),)),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              
              itemBuilder: (context, index) {
              return GestureDetector(
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
                child: Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: Color.fromARGB(255, 52, 9, 207)
                  ),
                  child: Text(gameMenulist[index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              
                ),
              );
            },)
         
        ],
      ),
    );
  }
}
