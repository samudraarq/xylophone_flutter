import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNum, Color containerColor}) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(soundNum),
        child: Container(
          color: containerColor,
        ),
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
            children: [
              buildKey(soundNum: 1, containerColor: Colors.red),
              buildKey(soundNum: 2, containerColor: Colors.orange),
              buildKey(soundNum: 3, containerColor: Colors.yellow),
              buildKey(soundNum: 4, containerColor: Colors.lightGreen),
              buildKey(soundNum: 5, containerColor: Colors.green),
              buildKey(soundNum: 6, containerColor: Colors.blue),
              buildKey(soundNum: 7, containerColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
