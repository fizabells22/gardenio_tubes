import 'package:flutter/material.dart';
import 'package:gardenio_tubes/widgets/bottom_nav_bar.dart';

class listRibet extends StatefulWidget {
  @override
  listRibetState createState() => listRibetState();
}

class listRibetState extends State<listRibet> {
  @override
  var titleList = [
    "Alocasia",
    "Fiddle Leaf Fig",
    "Zebra Plant",
  ];

  var imgList = [
    "assets/images/2. alocasia.jpg",
    "assets/images/2. Fiddle leaf fig.jpg",
    "assets/images/2. zebra plant.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        // App Bar
        title: Text(
          "Rekomendasi Tanaman Hias dengan Perawatan",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 21),
        ),
        elevation: 10,
        backgroundColor: Colors.grey[500],
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(context, imgList[index], titleList[index]);
            },
            child: Card(
              margin: EdgeInsets.only(top: 5, left: 8, right: 8),
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, img, title) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
