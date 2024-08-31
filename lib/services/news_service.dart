import 'package:dio/dio.dart';

import 'package:news_app/model/artical_model.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});
  Future<List<ArticalModel>> getTopHeadline() async {
    try {
    var  response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=74a29695fa834d8d86101004c1bb5729');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articals = jsonData['articles'];

      List<ArticalModel> articalList = [];
      for (var artical in articals) {
        ArticalModel articalModel = ArticalModel.fromJson(artical);
        articalList.add(articalModel);
      }
      return articalList;
    } catch (error) {
      print('Error: $error');
      return [];
    }
  }
}
