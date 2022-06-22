import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gardenio_tubes/constants.dart';
import 'package:gardenio_tubes/pages/login_page.dart';
import 'package:gardenio_tubes/pages/first_screen.dart';
import 'package:gardenio_tubes/pages/news_page/categories_news.dart';
import 'package:gardenio_tubes/pages/recom_page.dart';
import 'package:gardenio_tubes/pages/register_page.dart';
import 'package:gardenio_tubes/pages/simpleplant.dart';
import 'package:gardenio_tubes/screens/detail_screen.dart';
import 'package:gardenio_tubes/screens/home_screen.dart';
import 'package:gardenio_tubes/widgets/bottom_nav_bar.dart';
import 'package:gardenio_tubes/widgets/category_card.dart';
import 'package:gardenio_tubes/widgets/search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gardenio',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: LoginPage(),
    );
  }
}
