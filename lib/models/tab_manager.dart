import 'package:flutter/material.dart';

class TabMange extends ChangeNotifier {
  int selectedTab = 0;

  void goToTab(index) {
    selectedTab = index;
    notifyListeners();
  }
  void gotHomeAbinci(){
    selectedTab = 1;
    notifyListeners();
  }
}