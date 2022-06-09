import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //const XylophoneApp({Key? key}) : super(key: key);
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SafeArea(
          child: Column(
           children: <Widget>[
             FlatButton(
              color:Colors.red,
              onPressed: (){
                playSound(1);
               },
                 child: Text("")
             ),
              FlatButton(
              color:Colors.orange,
              onPressed: (){
                playSound(2);
              },
                  child: Text("")
              ),

              FlatButton(
                color:Colors.yellow,
                onPressed: (){
                  playSound(3);
              },
              child: Text(""),),
              FlatButton(
              color:Colors.green,
              onPressed: (){
                playSound(4);
              },
              child: Text("")),
              FlatButton(
                  color:Colors.teal,
                  onPressed: (){
                    playSound(5);
              },
                  child: Text("")
              ),
              FlatButton(
                color:Colors.blue,
                onPressed: (){
                  playSound(6);
              },
                  child: Text("")
              ),
             FlatButton(
                 color:Colors.purple,
                 onPressed: (){
                   playSound(7);
                 },
                 child: Text("")
             ),
           ],
          ),
        )
      ),
    );
  }
}

