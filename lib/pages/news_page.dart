import 'package:flutter/material.dart';
import 'package:gardenio_tubes/constants.dart';

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

class News {
  final int id, like, comment;
  final String title, description, imageSrc;
  final Color color;

  News(
      {required this.id,
      required this.like,
      required this.comment,
      required this.title,
      required this.description,
      required this.imageSrc,
      required this.color});
}

List<News> recipeBundles = [
  News(
      id: 1,
      like: 120,
      comment: 20,
      title: "Yuk Intip Tips Cegah Rontok pada Tanaman!",
      description: "Tutorial singkat merawat tanaman agar bebas dari rontok",
      imageSrc: "assets/images/news1.png",
      color: Color.fromARGB(255, 7, 80, 7)),
  News(
    id: 2,
    like: 98,
    comment: 26,
    title: "Best of 2022",
    description: "Trend tanaman hias 2022",
    imageSrc: "assets/images/news3.png",
    color: Color(0xFF90AF17),
  ),
  News(
    id: 3,
    like: 190,
    comment: 43,
    title: "Cara Mudah Menanam Bunga Telang",
    description:
        " Bunga telang atau yang memiliki nama latin Clitoria Ternatea.",
    imageSrc: "assets/images/news2.png",
    color: Color.fromARGB(255, 159, 160, 107),
  ),
];
