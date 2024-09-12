import 'package:flutter/material.dart';
import 'package:tunes/screen.dart';

void main() {
  runApp(TunesApp());
}

class TunesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
    );
  }
}
