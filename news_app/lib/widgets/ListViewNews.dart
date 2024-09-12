import 'package:flutter/material.dart';
import 'package:news_app/classes/ArticleModel.dart';
import 'package:news_app/widgets/News.dart';

class ListViewNews extends StatelessWidget {
  const ListViewNews({
    super.key,
    required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: NewsWidget(article: articles[index]));
    }));
  }
}
