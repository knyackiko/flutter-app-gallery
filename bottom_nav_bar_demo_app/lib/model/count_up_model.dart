import 'package:flutter/material.dart';

class CountUpModel with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void countUp() {
    _counter++;
    notifyListeners();
  }
}
