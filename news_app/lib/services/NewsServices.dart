import 'package:dio/dio.dart';
import 'package:news_app/classes/ArticleModel.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/latest?apikey=pub_52697ceba285bb77eb0145faa65433996b4e2&country=eg&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
      List<ArticleModel> ArticleList = [];
      for (var article in articles) {
        ArticleModel articleObj = ArticleModel.fromJson(article);
        ArticleList.add(articleObj);
      }
      return ArticleList;
    } catch (e) {
      return [];
    }
  }
}
