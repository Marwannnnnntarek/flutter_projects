import 'package:flutter/material.dart';
import 'package:news_app/classes/CategoriesModel.dart';

class CategoriesNews extends StatelessWidget {
  const CategoriesNews({
    super.key,
    required this.headersNewsModel,
  });

  final CategoriesModel headersNewsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 220,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(headersNewsModel.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            headersNewsModel.text,
            style: const TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
