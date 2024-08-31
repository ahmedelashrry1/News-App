// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/model/artical_model.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key, 
    required this.articalModel, 
    // required List<ArticalModel> articles,
  });

  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: articalModel.image ?? '', // رابط الصورة
            placeholder: (context, url) => CircularProgressIndicator(), // ويدجت يظهر أثناء التحميل
            errorWidget: (context, url, error) => Icon(Icons.error), // ويدجت يظهر عند حدوث خطأ في التحميل
            fit: BoxFit.cover, // كيفية ملاءمة الصورة في الحاوية
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articalModel.title ?? '',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articalModel.subTitle ?? '',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
