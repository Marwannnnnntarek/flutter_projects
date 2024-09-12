import 'package:flutter/material.dart';
import 'package:news_app/widgets/FutureBuilder.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [FutureBuilderWidget(category: category)],
          ),
        ),
      ),
    );
  }
}
