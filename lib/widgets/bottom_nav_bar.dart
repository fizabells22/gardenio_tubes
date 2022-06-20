import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:gardenio_tubes/constants.dart';
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
      height: 100,
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
                  'assets/icons/settings.svg',
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
                  return RecomPage();
                }),
              );
            }),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/search.svg',
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
                  return const DetailsScreen();
                }),
              );
            }),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/settings.svg',
                ),
                Text('Recom Page')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class BottomNavItem extends StatelessWidget {
//   final String svgScr;
//   final String title;
//   final Function press;
//   final bool isActive;
//   const BottomNavItem({
//     Key? key,
//     required this.svgScr,
//     required this.title,
//     required this.press,
//     this.isActive = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press(),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           SvgPicture.asset(
//             svgScr,
//             color: isActive ? kActiveIconColor : kTextColor,
//           ),
//           Text(
//             title,
//             style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
//           ),
//         ],
//       ),
//     );
//   }
// }
