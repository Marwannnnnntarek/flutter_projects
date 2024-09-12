import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/color.dart';

class ColPageComponent extends StatelessWidget {
  const ColPageComponent({super.key, required this.col});
  final Col col;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              col.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  col.jCol,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(col.eCol,
                    style: TextStyle(fontSize: 18, color: Colors.white))
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(col.sound));
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
