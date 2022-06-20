import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/add_plants/add_new_plant.dart';
import 'package:gardenio_tubes/pages/login_page.dart';
import 'package:gardenio_tubes/pages/first_screen.dart';
import 'package:gardenio_tubes/pages/home_page.dart';
import 'package:gardenio_tubes/pages/news_page/body_news.dart';
import 'package:gardenio_tubes/pages/news_page/categories_news.dart';
import 'package:gardenio_tubes/pages/recom_page.dart';
import 'package:gardenio_tubes/pages/register_page.dart';
import 'package:gardenio_tubes/pages/simpleplant.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstScreen(),
      );
  }
}
