import 'package:flutter/material.dart';
import 'package:news_app/classes/CategoriesModel.dart';
import 'package:news_app/widgets/Categories.dart';
import 'package:news_app/widgets/CategoriesNews.dart';

class Tap extends StatelessWidget {
  const Tap({super.key, required this.categoriesModel});
  final CategoriesModel categoriesModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Categories(category: categoriesModel.text);
        }));
      },
      child: CategoriesNews(headersNewsModel: categoriesModel),
    );
  }
}
