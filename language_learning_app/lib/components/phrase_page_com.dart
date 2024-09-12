import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/phrase.dart';

class PhrasePageComponent extends StatelessWidget {
  const PhrasePageComponent({super.key, required this.phrase});
  final Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jText,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(phrase.eText,
                    style: TextStyle(fontSize: 18, color: Colors.white))
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(phrase.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
