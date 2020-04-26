import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch, // semuanya jadi ujung ke ujung secara horizontal
          children: <Widget>[
            // SizedBox(
            //   width: double.infinity, //bikin dia jadi di paling kanan screen
            // ),
            Container(
              height: double.infinity,
              width: 100,
              color: Colors.red,
              child: Text('container 1'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
              Container(
                padding: EdgeInsets.all(16),
                height: 100,
                width: 100,
                color: Colors.green,
                child: Text('container 4'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Text('container 5'),
              ),
            ]
            ),
            Container(
              height: double.infinity,
              width: 100,
              color: Colors.blue,
              child: Text('container 3'),
            ),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
