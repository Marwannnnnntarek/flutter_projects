import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/number.dart';

class NumberPageComponent extends StatelessWidget {
  const NumberPageComponent({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEF9235),
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              number.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jNum,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(number.eNum,
                    style: TextStyle(fontSize: 18, color: Colors.white))
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
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
