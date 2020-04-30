import 'package:flutter/material.dart';

class ContainerModel with ChangeNotifier {
  ContainerModel({int initialPage = 1})
      : assert(initialPage != null),
        _initialPage = initialPage,
        _currentPage = initialPage,
        _pageController = PageController(initialPage: initialPage);

  int _currentPage;
  int get currentPage => _currentPage;

  final int _initialPage;
  int get initialPage => _initialPage;

  final PageController _pageController;
  PageController get pageController => _pageController;

  void updateCurrentPage(int page) {
    _currentPage = page;
    notifyListeners();
  }
}
