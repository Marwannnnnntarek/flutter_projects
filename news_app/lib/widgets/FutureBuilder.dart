import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/classes/ArticleModel.dart';
import 'package:news_app/services/NewsServices.dart';
import 'package:news_app/widgets/ErrorMessage.dart';
import 'package:news_app/widgets/ListViewNews.dart';
import 'package:news_app/widgets/LoadingIndicator.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key, required this.category});
  final String category;
  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

var futuree;

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  var futuree;
  @override
  void initState() {
    super.initState();

    futuree = NewsService(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: futuree,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return ListViewNews(articles: Snapshot.data!);
          } else if (Snapshot.hasError) {
            return const ErrorMessage();
          } else {
            return const LoadingIndicator();
          }
        });
  }
}
