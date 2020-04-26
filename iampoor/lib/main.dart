import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('kaum proletar lur'),
          backgroundColor: Colors.cyanAccent[700],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/coal.jpg'),
            Text(
              'anda golongan miskin',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ],
        )),
        backgroundColor: Colors.cyan[300],
      ),
    ));
