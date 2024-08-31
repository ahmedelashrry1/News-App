import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 75,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent), // جعل الحدود شفافة
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(category.image), // استخدام صورة الخلفية الخاصة بالكارت
          fit: BoxFit.cover, // ضبط الصورة لتغطي الكارت بالكامل
        ),
      ),
      child: Center(
        child: Text(
          category.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
