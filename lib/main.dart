import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
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
                  final player = AudioCache();
                  player.play("assets_note2.wav");
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  final player = AudioCache();
                  player.play("assets_note3.wav");
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: (){
                  final player = AudioCache();
                  player.play("assets_note4.wav");
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.red,
                onPressed: (){
                  final player = AudioCache();
                  player.play("assets_note5.wav");
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.deepOrange,
                onPressed: (){
                  final player = AudioCache();
                  player.play("assets_note6.wav");
                },
                child: const Text("Click me"),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  final player = AudioCache();
                  player.play("assets_note7.wav");
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
