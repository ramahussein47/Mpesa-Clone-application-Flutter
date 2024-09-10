import 'package:flutter/material.dart';

class BottomProvider with ChangeNotifier {
  int _index = 0;

  int get selectedIndex => _index;

  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
