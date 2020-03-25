import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[800],
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.green[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int total = 0;

  void rollDice(){
    rightDiceNumber = Random().nextInt(6) + 1;
    leftDiceNumber = Random().nextInt(6) + 1;
    total = rightDiceNumber + leftDiceNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(
              '$total',
              style: TextStyle(
                color: Colors.white,
                fontSize: 90
              ),
            )
          ]
        ),
        Row(
          children: <Widget>[
            Expanded(
                child:FlatButton(
                  onPressed: (){
                    setState(() {
                      rollDice();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                )
            ),
            Expanded(
                child:FlatButton(
                  onPressed: (){
                    setState(() {
                      rollDice();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                )
            ),
          ],
        ),
      ],
    );
  }
}

