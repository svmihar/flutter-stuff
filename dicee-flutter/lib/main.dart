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
var rightPressed = 0; 
var leftPressed = 0; 
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              // must be a direct descent of a row / column
              // flex: 2,
              child: FlatButton(
                onPressed: (){
                  leftPressed++;
                  print('left button pressed $leftPressed times');
                },
            child: Image.asset('images/dice1.png'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: (){
                rightPressed++;
                print('right button pressed $rightPressed times');

              },
              // flex: 1,
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
