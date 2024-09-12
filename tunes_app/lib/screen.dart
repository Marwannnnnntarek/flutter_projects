import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final AudioPlayer play = AudioPlayer();

  // Function to play a sound
  void playSound(String plays) async {
    await play.play(AssetSource(plays));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => playSound('sounds/note1.wav'),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => playSound('sounds/note2.wav'),
              child: Container(
                color: Colors.orange,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => playSound('sounds/note3.wav'),
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => playSound('sounds/note4.wav'),
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => playSound('sounds/note5.wav'),
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => playSound('sounds/note6.wav'),
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => playSound('sounds/note7.wav'),
              child: Container(
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
