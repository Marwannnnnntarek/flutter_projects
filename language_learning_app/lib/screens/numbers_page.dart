import 'package:flutter/material.dart';
import 'package:tuko_app/components/number_page_com.dart';
import 'package:tuko_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jNum: 'ichi',
        eNum: 'one'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jNum: 'ni',
        eNum: 'two'),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jNum: 'san',
        eNum: 'three'),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jNum: 'shi',
        eNum: 'four'),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jNum: 'go',
        eNum: 'five'),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jNum: 'roku',
        eNum: 'six'),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jNum: 'shichi',
        eNum: 'seven'),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jNum: 'hachi',
        eNum: 'eight'),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jNum: 'kyuu',
        eNum: 'nine'),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jNum: 'juu',
        eNum: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff6b4226),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return NumberPageComponent(number: numbers[index]);
            }));
  }
}
