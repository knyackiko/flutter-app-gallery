import 'package:flutter/material.dart';

class PostActionsModel with ChangeNotifier {
  bool _isLiked = false;
  bool get isLiked => _isLiked;

  bool _isBookmarked = false;
  bool get isBookmarked => _isBookmarked;

  void updateIsLiked(bool isLiked) {
    _isLiked = isLiked;
    notifyListeners();
  }

  void updateIsBookmarked(bool isBookmarked) {
    _isBookmarked = isBookmarked;
    notifyListeners();
  }
}
