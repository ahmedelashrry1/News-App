// // ignore_for_file: prefer_const_constructors

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/model/artical_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/views/newspage.dart';

// class NewsWidget extends StatefulWidget {
//   const NewsWidget({super.key});

//   @override
//   State<NewsWidget> createState() => _NewsWidgetState();
// }

// class _NewsWidgetState extends State<NewsWidget> {
//   List<ArticalModel> articles = [];
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     List<ArticalModel> fetchedArticles = await NewsService(dio: Dio()).getNews();
//     setState(() {
//       articles = fetchedArticles;
//       isLoading = false;
//     });
//   }

//   @override
// Widget build(BuildContext context) {
//   return isLoading
//       ? Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircularProgressIndicator(
//                 valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // لون دائرة التحميل
//               ),
//               SizedBox(height: 20), // مسافة بين الدائرة والنص
//               Text(
//                 "Loading Data... ",
//                 style: TextStyle(
//                   color: Colors.black, // لون النص
//                   fontSize: 18,
//                 ),
//               ),
//             ],
//           ),
//         )
//         : ListView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: articles.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.all(7.0),
//                 child: NewsPage(
//                   articalModel: articles[index],
//                 ),
//               );
//             },
//           );
//   }
// }
