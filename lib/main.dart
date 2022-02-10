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
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: (){
                  soundPlay(2);
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  soundPlay(3);
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: (){
                  soundPlay(4);
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.red,
                onPressed: (){
                  soundPlay(5);
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.deepOrange,
                onPressed: (){
                  soundPlay(6);
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  soundPlay(7);
                },
                child: const Text("Click me"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
