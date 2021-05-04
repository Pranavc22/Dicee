import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[900],
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[900],
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
  int left = 1, right = 2;
  void changeFace() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeFace();
                },
                child: Image.asset('images/dice$left.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeFace();
                },
                child: Image.asset('images/dice$right.png')),
          )
        ],
      ),
    );
  }
}