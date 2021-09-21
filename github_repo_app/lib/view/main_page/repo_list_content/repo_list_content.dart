import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/preferred_size.dart';
import 'package:github_repo_app/view/main_page/main_page.dart';
import 'package:github_repo_app/view/main_page/repo_list_content/repo_list_body.dart';

class RepoListContent implements MainPageContent {
  @override
  PreferredSizeWidget? appBar = AppBar(
    title: const Text('ホーム'),
  );

  @override
  Widget body = const RepoListBody();

  @override
  BottomNavigationBarItem bottomNavigationBarItem =
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム');
}
