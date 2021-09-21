import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view/main_page/favorite_content/favorite_content.dart';
import 'package:github_repo_app/view/main_page/repo_list_content/repo_list_content.dart';
import 'package:github_repo_app/view_model/main_page/main_page_view_model.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);
  static const routeName = '/main';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final mainPageViewModel = watch(mainPageViewModelProvider.notifier);
    final mainPageState = watch(mainPageViewModelProvider);
    final mainPageContents = <MainPageContent>[
      RepoListContent(),
      FavoriteContent(),
    ];

    return Scaffold(
      appBar: mainPageContents[mainPageState.selectedIndex].appBar,
      body: mainPageContents[mainPageState.selectedIndex].body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mainPageState.selectedIndex,
        onTap: (index) => mainPageViewModel.updateSelectedIndex(index),
        items: mainPageContents
            .map((contents) => contents.bottomNavigationBarItem)
            .toList(),
      ),
    );
  }
}

abstract class MainPageContent {
  PreferredSizeWidget? appBar;
  late Widget body;
  late BottomNavigationBarItem bottomNavigationBarItem;
}
