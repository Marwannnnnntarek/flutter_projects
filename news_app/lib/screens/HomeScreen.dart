import 'package:flutter/material.dart';
import 'package:news_app/widgets/AppBar.dart';
import 'package:news_app/widgets/Scroll.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Appbar(),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: const ScrollWidget());
  }
}
