import 'package:flutter/material.dart';
import 'package:gardenio_tubes/models/news_list.dart';

import 'categories_news.dart';
import 'news_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size SizeConfig = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: <Widget>[
          Categories(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.height * 2,
                  vertical: SizeConfig.width * 2),
              child: GridView.builder(
                itemCount: newsBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: SizeConfig == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: SizeConfig == Orientation.landscape
                      ? SizeConfig.height * 2
                      : 0,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => NewsCard(
                  newsBundle: newsBundles[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
