import 'package:flutter/material.dart';

class TabBarController extends ChangeNotifier {
  int selectedTabIndex = 0;
  PageController pageController = PageController();

  void selectTab(int index) {
    selectedTabIndex = index;
    notifyListeners();
  }
}
