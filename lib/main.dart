import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSong(int numbemMusic) {
    final player = AudioCache();
    player.play('note$numbemMusic.wav');
  }

  Expanded buildKey({Color color, int numberSong}) {
      return Expanded(
          child: FlatButton(
          color: color,
          onPressed: (){
            playSong(numberSong);
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, numberSong: 1),
              buildKey(color: Colors.blue, numberSong: 2),
              buildKey(color: Colors.grey, numberSong: 3),
              buildKey(color: Colors.green, numberSong: 4),
              buildKey(color: Colors.orange, numberSong: 5),
              buildKey(color: Colors.purple, numberSong: 6),
              buildKey(color: Colors.yellow, numberSong: 7),
            ],
          ),
          
        ),
      ),
    );
  }
}
