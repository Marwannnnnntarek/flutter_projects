import 'package:flutter/material.dart';
import 'package:news_app/classes/CategoriesModel.dart';

import 'package:news_app/widgets/Tap.dart';

class ListViewCategories extends StatelessWidget {
  ListViewCategories({
    super.key,
  });
  final List<CategoriesModel> HeadersNewsList = [
    CategoriesModel(text: 'Sports', image: 'assets/images/sports.jpg'),
    CategoriesModel(text: 'Business', image: 'assets/images/business.jpg'),
    CategoriesModel(
        text: 'Entertainment', image: 'assets/images/entertaiment.jpg'),
    CategoriesModel(text: 'Health', image: 'assets/images/health.jpg'),
    CategoriesModel(text: 'Science', image: 'assets/images/science.jpg'),
    CategoriesModel(text: 'Technology', image: 'assets/images/technology.jpeg'),
    CategoriesModel(text: 'Top', image: 'assets/images/general.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: HeadersNewsList.length,
        itemBuilder: (context, index) {
          return Tap(
            categoriesModel: HeadersNewsList[index],
          );
        },
      ),
    );
  }
}
