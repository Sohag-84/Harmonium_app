import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  //to simplify code make a function
  void soundPlay(int soundNumber){
    final player = AudioCache();
    player.play("assets_note$soundNumber.wav");
  }
  //make function for expanded widget
  Expanded expanded(Color color, int soundNumber){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          soundPlay(soundNumber);
        },
        child: const Text(""),
      ),
    );
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Xylophone app"),
          centerTitle: true,
          leading: const Icon(Icons.menu),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,//its use to wrap full width in the screen
            children: [
              expanded(Colors.red,2),
              expanded(Colors.orange,3),
              expanded(Colors.tealAccent,4),
              expanded(Colors.deepPurple,5),
              expanded(Colors.deepOrangeAccent,6),
              expanded(Colors.green,7),
            ],
          ),
        ),
      ),
    );
  }
}
