import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  bool change = false;

  void changeColor() {
    change = !change;
    notifyListeners();
  }
}
