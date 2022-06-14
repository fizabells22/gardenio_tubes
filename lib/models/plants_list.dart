import 'package:flutter/material.dart';

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

List<News> newsBundles = [
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
