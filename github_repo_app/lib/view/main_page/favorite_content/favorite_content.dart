import 'package:flutter/material.dart';
import 'package:github_repo_app/view/main_page/favorite_content/favorite_body.dart';
import 'package:github_repo_app/view/main_page/main_page.dart';

class FavoriteContent implements MainPageContent {
  @override
  PreferredSizeWidget? appBar = AppBar(title: const Text('お気に入り'));

  @override
  Widget body = const FavoriteBody();

  @override
  BottomNavigationBarItem bottomNavigationBarItem =
      const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'お気に入り');
}
