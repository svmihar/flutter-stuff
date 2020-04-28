import 'dart:math';

import 'package:flutter/material.dart';

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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var rightPressed = 1;
  var leftPressed = 1;
  int totalKocokan=0;
  void kocok(){
    var rnd = Random();
    rightPressed  = 1+ rnd.nextInt(6);
    leftPressed  = 1+ rnd.nextInt(6);
    totalKocokan++;
    print('terkocok $totalKocokan kali');
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              // must be a direct descent of a row / column
              // flex: 2,
              child: FlatButton(
            onPressed: () {
              setState(() {
                kocok();
              });
            },
            child: Image.asset('images/dice$leftPressed.png'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  kocok();
                });
              },
              // flex: 1,
              child: Image.asset('images/dice$rightPressed.png'),
            ),
          ),
        ],
      ),
    );
  }
}
