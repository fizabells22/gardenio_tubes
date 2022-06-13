import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/home_page.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({required this.id, required this.icon, required this.destination});

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void chnageNavIndex({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/gambar1.jpeg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/gambar2.jpeg",
      destination: HomeScreen(),
    ),
  ];
}
