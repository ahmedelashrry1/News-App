import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/views/newspage.dart';

class NewsWidget extends StatelessWidget {
  final List<ArticalModel> articles;

const  NewsWidget({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding:const EdgeInsets.only(bottom: 20),
            child: NewsPage(
              articalModel: articles[index], 
            ),
          );
        },
      ),
    );
  }
}