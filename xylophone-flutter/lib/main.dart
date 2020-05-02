import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      final player = AudioCache();
                      player.play(
                          'note1.wav'); // secara default bakal nyari di assets/
                    },
                    child: Text('')),
              ),
              Container(
                child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      final player = AudioCache();
                      player.play(
                          'note2.wav'); // secara default bakal nyari di assets/
                    },
                    child: Text('')),
              ),
              Container(
                child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      final player = AudioCache();
                      player.play(
                          'note3.wav'); // secara default bakal nyari di assets/
                    },
                    child: Text('')),
              ),
              Container(
                child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      final player = AudioCache();
                      player.play(
                          'note4.wav'); // secara default bakal nyari di assets/
                    },
                    child: Text('')),
              ),
              Container(
                child: FlatButton(
                    color: Colors.teal,
                    onPressed: () {
                      final player = AudioCache();
                      player.play(
                          'note5.wav'); // secara default bakal nyari di assets/
                    },
                    child: Text('')),
              ),
              Container(
                child: FlatButton(
                    color: Colors.pink,
                    onPressed: () {
                      final player = AudioCache();
                      player.play(
                          'note6.wav'); // secara default bakal nyari di assets/
                    },
                    child: Text('')),
              ),
              Container(
                child: FlatButton(
                    color: Colors.indigo,
                    onPressed: () {
                      final player = AudioCache();
                      player.play(
                          'note7.wav'); // secara default bakal nyari di assets/
                    },
                    child: Text('')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
