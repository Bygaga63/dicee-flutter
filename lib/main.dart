import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int getRandomNumber() {
    return Random().nextInt(6) + 1;
  }

  int leftDiceNumber = Random().nextInt(6) + 1;

  int rightDiceNumber = Random().nextInt(6) + 1;

  void changeAllDices() {
    setState(() {
      leftDiceNumber = getRandomNumber();
      rightDiceNumber = getRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: changeAllDices,
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: changeAllDices,
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
//        Image(),
        ],
      ),
    );
  }
}
