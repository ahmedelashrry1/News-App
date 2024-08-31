import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_listview.dart';

class NewWidgetBuilder extends StatefulWidget {
  final List<ArticalModel> artical;
  const NewWidgetBuilder({super.key, required this.artical});

  @override
  State<NewWidgetBuilder> createState() => _NewWidgetBuilderState();
}

class _NewWidgetBuilderState extends State<NewWidgetBuilder> {
  late Future<List<ArticalModel>> _future;

  
  @override
  void initState() {
    super.initState();
    _future = NewsService(dio: Dio()).getTopHeadline();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsWidget(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Error fetching data',
                style: TextStyle(color: Colors.red),
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

