import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/HomeScreen.dart';
import 'package:news_app/services/NewsServices.dart';

void main() {
  NewsService(Dio());
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
