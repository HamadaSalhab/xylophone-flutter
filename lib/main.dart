import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Widget buildKey(int SoundNumber, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          PlaySound(SoundNumber);
        },
        color: c,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.cyan),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
