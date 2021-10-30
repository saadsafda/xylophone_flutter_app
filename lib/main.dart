import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red[400], soundNum: 1),
              buildkey(color: Colors.yellow[400], soundNum: 2),
              buildkey(color: Colors.green[400], soundNum: 3),
              buildkey(color: Colors.purple[400], soundNum: 4),
              buildkey(color: Colors.blue[400], soundNum: 5),
              buildkey(color: Colors.orange[400], soundNum: 6),
              buildkey(color: Colors.grey, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
