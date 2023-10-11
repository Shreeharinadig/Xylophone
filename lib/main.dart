import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded displayWidget(String msg, int soundNumber, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber); // will immediately start playing
        },
        child: Text('$msg', textScaleFactor: 3),
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.all(30.0),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                displayWidget('Sa', 1, Colors.red),
                displayWidget('Ri', 2, Colors.blue),
                displayWidget('Ga', 3, Colors.yellow),
                displayWidget('Ma', 4, Colors.brown),
                displayWidget('Pa', 5, Colors.black),
                displayWidget('Da', 6, Colors.green),
                displayWidget('Ni', 7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
