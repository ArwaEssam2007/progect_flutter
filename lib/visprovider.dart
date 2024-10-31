import 'package:flutter/material.dart';

class VisibilityProvider extends ChangeNotifier {
  bool isVisible = false;

  void toggleVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }
}
