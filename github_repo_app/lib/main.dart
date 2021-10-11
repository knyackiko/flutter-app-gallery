import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view/main_page/main_page.dart';
import 'package:github_repo_app/view/repo_page/repo_page.dart';
import 'package:github_repo_app/view/search_page/search_page.dart';
import 'package:github_repo_app/view/search_result_page/search_result_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An app to show GitHub repositories',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: MainPage.routeName,
      routes: <String, WidgetBuilder>{
        MainPage.routeName: (BuildContext context) => const MainPage(),
        RepoPage.routeName: (BuildContext context) => const RepoPage(),
        SearchPage.routeName: (BuildContext context) => const SearchPage(),
        SearchResultPage.routeName: (BuildContext context) =>
            const SearchResultPage(),
      },
    );
  }
}
