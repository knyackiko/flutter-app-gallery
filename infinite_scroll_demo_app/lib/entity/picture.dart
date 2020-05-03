import 'package:flutter/material.dart';

class Picture {
  String path;
  bool isMultiple;
  bool hasProduct;

  Picture(
      {@required this.path, this.isMultiple = false, this.hasProduct = false});
}

final pictures = <Picture>[
  Picture(
      path: 'assets/chinese_cuisine.jpeg', isMultiple: true, hasProduct: true),
  Picture(path: 'assets/flower.jpeg', isMultiple: true),
  Picture(path: 'assets/ikura.jpeg', isMultiple: true),
  Picture(path: 'assets/mothers_day.jpeg', hasProduct: true),
  Picture(path: 'assets/obanzai.jpeg'),
  Picture(path: 'assets/poppies.jpeg', isMultiple: true),
  Picture(path: 'assets/swan.jpeg'),
  Picture(path: 'assets/umbrella.jpeg'),
];
