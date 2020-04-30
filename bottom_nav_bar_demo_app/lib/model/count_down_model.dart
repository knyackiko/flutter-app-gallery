import 'package:flutter/material.dart';

class CountDownModel with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void countDown() {
    _counter--;
    notifyListeners();
  }
}
