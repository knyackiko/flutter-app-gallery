import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view/repo_list_page/repo_list_page.dart';
import 'package:github_repo_app/view/repo_page/repo_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'An app to show GitHub repositories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RepoListPage.routeName,
      routes: <String, WidgetBuilder>{
        RepoListPage.routeName: (BuildContext context) =>
            const RepoListPage(title: 'Repositories'),
        RepoPage.routeName: (BuildContext context) => const RepoPage(),
      },
    );
  }
}
