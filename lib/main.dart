import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyPianoApp());


class MyPianoApp extends StatelessWidget {
  const MyPianoApp({super.key});


  //Method For Auto Player
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  //Method BuiltPianoKey
  Expanded builtPianoKey({Color? color, int? soundNumber}){
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: (){
            //Play Sound
            playSound(soundNumber!);

          },
          child: null)
      );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Appbar
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("MyPiano App"),
        ),
        backgroundColor: Colors.teal[100],

        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [


              SizedBox(
                height: 10,
              ),
              builtPianoKey(color: Colors.red, soundNumber: 1),
              SizedBox(
                height: 10,
              ),
              builtPianoKey(color: Colors.orange, soundNumber: 2),
              SizedBox(
                height: 10,
              ),
              builtPianoKey(color: Colors.yellow, soundNumber: 3),
              SizedBox(
                height: 10,
              ),
              builtPianoKey(color: Colors.green, soundNumber: 4),
              SizedBox(
                height: 10,
              ),
              builtPianoKey(color: Colors.amber, soundNumber: 5),
              SizedBox(
                height: 10,
              ),
              builtPianoKey(color: Colors.blue, soundNumber: 6),
              SizedBox(
                height: 10,
              ),
              builtPianoKey(color: Colors.pink, soundNumber: 7),
              SizedBox(
                height: 10,
              ),


            ],
          ),
        ),
      ),
    );
  }
}




