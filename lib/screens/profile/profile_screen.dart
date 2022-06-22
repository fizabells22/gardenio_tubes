import 'package:flutter/material.dart';
import 'package:gardenio_tubes/widgets/bottom_nav_bar.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        // leading: GestureDetector(
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //     ),
        //     onTap: () {
        //       Navigator.pop(context);
        //     }),
        title: Text(
          "Profile",
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 21),
        ),
        elevation: 10,
        backgroundColor: Colors.green.shade600,
      ),
      body: Body(),
    );
  }
}
