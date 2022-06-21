import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gardenio_tubes/pages/news_page/categories_news.dart';
import 'package:gardenio_tubes/pages/recom_page.dart';
import 'package:gardenio_tubes/screens/detail_screen.dart';
import 'package:gardenio_tubes/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }),
              );
            }),
            child: Column(
              children: [
                SvgPicture.asset(
                  '"assets/icons/icons8-home.svg"',
                ),
                Text('Home Page')
              ],
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Categories();
                }),
              );
            }),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/plants.svg',
                ),
                Text('My Plants')
              ],
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DetailsScreen();
                }),
              );
            }),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/settings.svg',
                ),
                Text('Settings')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
