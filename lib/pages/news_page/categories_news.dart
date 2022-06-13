import 'package:flutter/material.dart';
import 'package:gardenio_tubes/constants.dart';
import 'package:gardenio_tubes/widgets/bottom_nav_bar.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Plant", "Trend", "Monstera"];
  // By default first one is selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size SizeConfig = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.height * 2),
      child: SizedBox(
        height: SizeConfig.height * 3.5, // 35
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoriItem(index),
        ),
      ),
    );
  }

  Widget buildCategoriItem(int index) {
    Size SizeConfig = MediaQuery.of(context).size;
    // bottomNavigationBar:
    // const BottomNavBar();
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.height * 2),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.height * 2, //20
          vertical: SizeConfig.height * 0.5, //5
        ),
        decoration: BoxDecoration(
            color:
                selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(
              SizeConfig.height * 1.6, // 16
            )),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kPrimaryColor : kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
