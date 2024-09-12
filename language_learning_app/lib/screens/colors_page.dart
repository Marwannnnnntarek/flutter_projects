import 'package:flutter/material.dart';
import 'package:tuko_app/components/colors_page_com.dart';
import 'package:tuko_app/models/color.dart';

class ColPage extends StatelessWidget {
  const ColPage({super.key});

  final List<Col> cols = const [
    Col(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jCol: 'burakku',
        eCol: 'black'),
    Col(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jCol: 'chairo',
        eCol: 'brown'),
    Col(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jCol: 'hokori ppoi kiiro',
        eCol: 'dusty yellow'),
    Col(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jCol: 'gure',
        eCol: 'grey'),
    Col(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jCol: 'midori',
        eCol: 'green'),
    Col(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jCol: 'ake',
        eCol: 'red'),
    Col(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jCol: 'shiroi',
        eCol: 'white'),
    Col(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jCol: 'kiiro',
        eCol: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Colors',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff6b4226),
        ),
        body: ListView.builder(
            itemCount: cols.length,
            itemBuilder: (context, index) {
              return ColPageComponent(col: cols[index]);
            }));
  }
}
