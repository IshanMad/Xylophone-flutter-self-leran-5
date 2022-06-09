import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SafeArea(
          child: Center(child: FlatButton(onPressed: (){
            final player = AudioCache();
            player.play("note1.wav");
          },
            child: Text("Click Me"),
          ),
          ),
        )
      ),
    );
  }
}

