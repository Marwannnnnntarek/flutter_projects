import 'package:flutter/material.dart';
import 'package:tuko_app/components/home_page_com.dart';
import 'package:tuko_app/screens/colors_page.dart';
import 'package:tuko_app/screens/family_page.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrase_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Toku',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff6b4226),
        ),
        body: Column(
          children: [
            HomePageComponent(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
              text: 'Numbers',
              color: Color(0xffEF9235),
            ),
            HomePageComponent(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyPage();
                }));
              },
              text: 'Family members',
              color: Color(0xff458b00),
            ),
            HomePageComponent(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColPage();
                }));
              },
              text: 'Colors',
              color: Colors.purple,
            ),
            HomePageComponent(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasePage();
                }));
              },
              text: 'Phrases',
              color: Colors.blue,
            )
          ],
        ));
  }
}
