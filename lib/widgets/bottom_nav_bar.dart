import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gardenio_tubes/constants.dart';
import 'package:gardenio_tubes/pages/home_page.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Home",
            svgScr: "assets/icons/menu.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }),
              );
            },
          ),
          BottomNavItem(
            title: "My Plant",
            svgScr: "assets/icons/plant.svg",
            isActive: true,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }),
              );
            },
          ),
          BottomNavItem(
            title: "Settings",
            svgScr: "assets/icons/settings.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
