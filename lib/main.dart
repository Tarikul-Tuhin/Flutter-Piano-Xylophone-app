import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'button.dart';

ButtonPressed b1 = ButtonPressed();

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int ToneNumber) {
    final player = AudioCache();
    player.play('note$ToneNumber.wav');
  }

  Expanded button({Color color, int tone}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(tone);
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
              button(color: Colors.blue[900], tone: 1,),
              button(color: Colors.blue[800], tone: 2),
              button(color: Colors.blue[700], tone: 3),
              button(color: Colors.blue[600], tone: 4),
              button(color: Colors.blue[500], tone: 5),
              button(color: Colors.blue[400], tone: 6),
              button(color: Colors.blue[300], tone: 7),
            ],
          ),
        ),
      ),
    );
  }
}
