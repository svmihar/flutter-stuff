import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Should you?'),
          backgroundColor: Colors.grey,
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int nomor;
  void kasihNomor() {
    nomor = Random().nextInt(100)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Expanded(
          child: FlatButton(
            padding: EdgeInsets.all(90),
              onPressed: () {
                setState(() {
                  kasihNomor();
                });
              },
              child: Text('dapet $nomor', style: TextStyle(fontSize: 40),)),
        ),
      ]),
    );
  }
}
