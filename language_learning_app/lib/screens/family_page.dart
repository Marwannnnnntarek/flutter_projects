import 'package:flutter/material.dart';
import 'package:tuko_app/components/family_page_com.dart';
import 'package:tuko_app/models/family.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<Family> family = const [
    Family(
        eTitle: 'father',
        imag: 'assets/images/family_members/family_father.png',
        jTitle: 'chichioya',
        sound: 'sounds/family_members/father.wav'),
    Family(
        eTitle: 'daughter',
        imag: 'assets/images/family_members/family_daughter.png',
        jTitle: 'musume',
        sound: 'sounds/family_members/daughter.wav'),
    Family(
        eTitle: 'grand father',
        imag: 'assets/images/family_members/family_grandfather.png',
        jTitle: 'ojisan',
        sound: 'sounds/family_members/grand father.wav'),
    Family(
        eTitle: 'mother',
        imag: 'assets/images/family_members/family_mother.png',
        jTitle: 'hahaoya',
        sound: 'sounds/family_members/mother.wav'),
    Family(
        eTitle: 'grand mother',
        imag: 'assets/images/family_members/family_grandmother.png',
        jTitle: 'sobo',
        sound: 'sounds/family_members/grand mother.wav'),
    Family(
        eTitle: 'older brother',
        imag: 'assets/images/family_members/family_older_brother.png',
        jTitle: 'nisan',
        sound: 'sounds/family_members/older bother.wav'),
    Family(
        eTitle: 'older sister',
        imag: 'assets/images/family_members/family_older_sister.png',
        jTitle: 'ane',
        sound: 'sounds/family_members/older sister.wav'),
    Family(
        eTitle: 'son',
        imag: 'assets/images/family_members/family_son.png',
        jTitle: 'musuko',
        sound: 'sounds/family_members/son.wav'),
    Family(
        eTitle: 'younger brother',
        imag: 'assets/images/family_members/family_younger_brother.png',
        jTitle: 'chichioya',
        sound: 'sounds/family_members/younger brohter.wav'),
    Family(
        eTitle: 'younger sister',
        imag: 'assets/images/family_members/family_younger_sister.png',
        jTitle: 'chichioya',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Family Members',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff6b4226),
        ),
        body: ListView.builder(
            itemCount: family.length,
            itemBuilder: (context, index) {
              return FamilyPageComponent(family: family[index]);
            }));
  }
}
