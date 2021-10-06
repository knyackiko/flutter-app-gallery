import 'package:flutter/material.dart';
import 'package:github_repo_app/view/main_page/home_content/repo_list_app_bar.dart';
import 'package:github_repo_app/view/main_page/home_content/repo_list_body.dart';
import 'package:github_repo_app/view/main_page/main_page.dart';

class HomeContent implements MainPageContent {
  @override
  PreferredSizeWidget? appBar = const RepoListAppBar();

  @override
  Widget body = const RepoListBody();

  @override
  BottomNavigationBarItem bottomNavigationBarItem =
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム');
}
