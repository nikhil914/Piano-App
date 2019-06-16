import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded play({color: Colors, int n}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(n);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Piaano')),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              play(color: Colors.red, n: 1),
              play(color: Colors.orange, n: 2),
              play(color: Colors.blue, n: 3),
              play(color: Colors.blueGrey, n: 4),
              play(color: Colors.yellow, n: 5),
              play(color: Colors.green, n: 6),
              play(color: Colors.teal, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
