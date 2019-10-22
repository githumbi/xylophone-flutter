import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundF(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color colors,int soundnum}){
    return  Expanded(
      child: FlatButton(
        color : colors,
        onPressed: (){
          soundF(soundnum);
        },),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

               buildKey(colors: Colors.red, soundnum: 1 ),
                buildKey(colors: Colors.blue, soundnum: 2 ),
                buildKey(colors: Colors.orange, soundnum: 3 ),
                buildKey(colors: Colors.brown, soundnum: 4 ),
                buildKey(colors: Colors.green, soundnum: 5 ),
                buildKey(colors: Colors.pink, soundnum: 6 ),
                buildKey(colors: Colors.purple, soundnum: 7 ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
