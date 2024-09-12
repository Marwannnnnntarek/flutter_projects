import 'package:flutter/material.dart';
import 'package:tuko_app/components/phrase_page_com.dart';
import 'package:tuko_app/models/phrase.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});

  final List<Phrase> phrases = const [
    Phrase(
        sound: 'sounds/phrases/are_you_coming.wav',
        jText: 'ichi',
        eText: 'are you coming'),
    Phrase(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jText: 'ichi',
        eText: 'dont forget to subscribe'),
    Phrase(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jText: 'ichi',
        eText: 'how are you feeling'),
    Phrase(
        sound: 'sounds/phrases/i_love_anime.wav',
        jText: 'ichi',
        eText: 'i love anime'),
    Phrase(
        sound: 'sounds/phrases/i_love_programming.wav',
        jText: 'ichi',
        eText: 'i love programming'),
    Phrase(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jText: 'ichi',
        eText: 'prgrammig is easy'),
    Phrase(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jText: 'ichi',
        eText: 'what is your name'),
    Phrase(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jText: 'ichi',
        eText: 'where are you going'),
    Phrase(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jText: 'ichi',
        eText: 'yes i am comming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Phrases',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff6b4226),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return PhrasePageComponent(phrase: phrases[index]);
            }));
  }
}
