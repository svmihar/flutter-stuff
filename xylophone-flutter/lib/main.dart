import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

FlatButton pencet() {
  return FlatButton(
    onPressed: () {
      print('jah');
    },
    child: Text('pencelah'),
  );
}

Expanded keyNotes({Color color=Colors.yellow, int angkaWav}) {
  final player = AudioCache();
  return Expanded(
    child: FlatButton(

      color: color,
      onPressed: () {
        player.play('note$angkaWav.wav');
      },
      child: Text('$angkaWav'),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              pencet(),
              keyNotes(angkaWav: 1),
              keyNotes(color: Colors.red, angkaWav: 2),
              keyNotes(color: Colors.orange, angkaWav: 3),
              keyNotes(color: Colors.teal, angkaWav: 4),
              keyNotes(color: Colors.blue, angkaWav: 5),
              keyNotes(color: Colors.cyan, angkaWav: 6),
              keyNotes(color: Colors.indigo, angkaWav: 7),
            ],
          ),
        ),
      ),
    );
  }
}
