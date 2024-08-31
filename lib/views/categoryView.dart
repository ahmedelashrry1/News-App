import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_builder.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewWidgetBuilder(artical: [],),
        ],
      ),
    );
  }
}
