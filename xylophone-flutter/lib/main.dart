import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int note) {
    player.play('note$note.wav');
  }

  Expanded createButton(int sound, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(sound);
        },
        child: null,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(1, Colors.red),
              createButton(2, Colors.orange),
              createButton(3, Colors.yellow),
              createButton(4, Colors.green),
              createButton(5, Colors.teal),
              createButton(6, Colors.blue),
              createButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
