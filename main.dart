import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
   final player = AudioPlayer();
   player.play(UrlSource('note$soundNumber.wav'));

  // If file located in assets folder like assets/sounds/note01.wave"
  await player.play(AssetSource('sounds/note$soundNumber.wav'));
  }
// its better to not use function as given below, but using a StatelessWidget
  Expanded buildKey(int soundNo, MaterialStateColor materialStateColor) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: materialStateColor),
        onPressed: () {
          playSound(soundNo);
        },
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
            children: [
              buildKey(
                  1, MaterialStateColor.resolveWith((states) => Colors.red)),
              buildKey(
                  2, MaterialStateColor.resolveWith((states) => Colors.yellow)),
              buildKey(
                  3, MaterialStateColor.resolveWith((states) => Colors.green)),
              buildKey(4,
                  MaterialStateColor.resolveWith((states) => Colors.blueGrey)),
              buildKey(
                  5, MaterialStateColor.resolveWith((states) => Colors.blue)),
              buildKey(
                  6, MaterialStateColor.resolveWith((states) => Colors.purple)),
              buildKey(
                  7,
                  MaterialStateColor.resolveWith(
                      (states) => Colors.pinkAccent)),
            ],
          ),
        ),
      ),
    );
  }
}
