import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({required Color color, required int soundNumber}) {
    final ButtonStyle flatButtonStyle = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(color),
      backgroundColor: MaterialStateProperty.all<Color>(color),
    );

    return Expanded(
      child: TextButton(
        style: flatButtonStyle,
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(""),
      ),
    );
  }

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(
                  color: Colors.red,
                  soundNumber: 1,
                ),
                buildKey(
                  color: Colors.orange,
                  soundNumber: 2,
                ),
                buildKey(
                  color: Colors.blue,
                  soundNumber: 3,
                ),
                buildKey(
                  color: Colors.yellow,
                  soundNumber: 4,
                ),
                buildKey(
                  color: Colors.green,
                  soundNumber: 6,
                ),
                buildKey(
                  color: Colors.teal,
                  soundNumber: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
