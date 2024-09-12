import 'package:flutter/material.dart';
import 'package:news_app/widgets/ListViewCategories.dart';
import 'package:news_app/widgets/FutureBuilder.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListViewCategories(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const FutureBuilderWidget(
              category: 'top',
            )
          ],
        ),
      ),
    );
  }
}
