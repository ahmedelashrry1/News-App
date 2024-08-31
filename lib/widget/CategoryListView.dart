import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/views/categoryView.dart';
import 'categorycard.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });

  final List<CategoryModel> categoryList = [
    CategoryModel(name: "programing", image: "assets/images/program padge.jpg"),
    CategoryModel(name: "technology", image: "assets/images/tecnology.jpg"),
    CategoryModel(name: "bussnis",    image: "assets/images/bussnis.jpg"),
    CategoryModel(name: "sports",     image: "assets/images/sports.jpg"),
    CategoryModel(name: "news",       image: "assets/images/news.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Categoryview()));
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.0), 
                      child: SizedBox(
                        width: 120,
                        child: Categorycard(category: categoryList[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}