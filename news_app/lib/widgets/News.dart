import 'package:flutter/material.dart';
import 'package:news_app/classes/ArticleModel.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key, required this.article});

  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            article.image ??
                'http://www.gedistatic.it/content/gnn/img/ilsecoloxix/2024/09/08/124903683-f926daa2-0aad-4e8a-ae91-2db7ce9cc598.jpg',
            width: 400,
            height: 180,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              return loadingProgress == null
                  ? child
                  : const LinearProgressIndicator();
            },
          ),
          // child: Image.network(
          //     'https://www.elporvenir.mx/local/otorga-uanl-a-12-catedraticos-el-titulo-de-profesor-emerito/770015',
          //     loadingBuilder: (context, child, progress) {
          //   return progress == null ? child : LinearProgressIndicator();
          // }),
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          article.subTitle ?? 'there is no description',
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
