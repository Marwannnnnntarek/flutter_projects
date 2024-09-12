import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/family.dart';

class FamilyPageComponent extends StatelessWidget {
  const FamilyPageComponent({super.key, required this.family});
  final Family family;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff458b00),
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              family.imag,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.jTitle,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(family.eTitle,
                    style: TextStyle(fontSize: 18, color: Colors.white))
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(family.sound));
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
