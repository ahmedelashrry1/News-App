// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/border/onboarding_screen.dart';
import 'package:news_app/services/news_service.dart';


void main()  {

  runApp(MyApp());
  NewsService(dio: Dio()).getTopHeadline();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
