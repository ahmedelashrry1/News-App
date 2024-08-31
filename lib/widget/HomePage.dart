import 'package:flutter/material.dart';
import 'package:news_app/widget/CategoryListView.dart';
import 'package:news_app/widget/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WORLD NEWS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/BARR.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Action for menu button
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white.withOpacity(0.7)),
            onPressed: () {
              // Action for search button
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white.withOpacity(0.7)),
            onPressed: () {
              // Action for notifications button
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ground.jpg'), // خلفية بعد شريط التطبيق
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            NewWidgetBuilder(artical: [],),
          ],
        ),
      ),
    );
  }
}

