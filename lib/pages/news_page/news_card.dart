import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:gardenio_tubes/models/news_list.dart';

class NewsCard extends StatelessWidget {
  final News newsBundle;
  final Function press;

  const NewsCard({Key? key, required this.newsBundle, required this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size SizeConfig = MediaQuery.of(context).size;
    // Now we dont this Aspect ratio
    return GestureDetector(
      onTap: press(),
      child: Container(
        decoration: BoxDecoration(
          color: newsBundle.color,
          borderRadius:
              BorderRadius.circular(SizeConfig.aspectRatio * 1.8), //18
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.aspectRatio * 2), //20
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      newsBundle.title,
                      style: TextStyle(
                          fontSize: SizeConfig.aspectRatio * 2.2, //22
                          color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: SizeConfig.height * 0.5), // 5
                    Text(
                      newsBundle.description,
                      style: TextStyle(color: Colors.white54),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    buildInfoRow(
                      SizeConfig.aspectRatio,
                      iconSrc: "assets/icons/like.png",
                      text: "${newsBundle.like} Likes",
                    ),
                    SizedBox(height: SizeConfig.height * 0.5), //5
                    buildInfoRow(
                      SizeConfig.aspectRatio,
                      iconSrc: "assets/icons/comment.png",
                      text: "${newsBundle.comment} Comment",
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(width: SizeConfig.width), //5
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                newsBundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {required String iconSrc, text}) {
    return Row(
      children: <Widget>[
        Image.asset(iconSrc),
        SizedBox(width: defaultSize), // 10
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
