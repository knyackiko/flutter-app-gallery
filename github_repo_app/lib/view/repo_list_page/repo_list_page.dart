import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view/repo_list_page/repo_list_item.dart';
import 'package:github_repo_app/view_model/repo_list_page/repo_list_page_view_model.dart';

class RepoListPage extends ConsumerWidget {
  const RepoListPage({Key? key, required this.title}) : super(key: key);
  static const routeName = '/repo-list';
  final String title;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final repoListPageState = watch(repoListPageViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: repoListPageState.repositories.length,
        itemBuilder: (BuildContext context, int index) =>
            RepoListItem(repo: repoListPageState.repositories[index]),
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 0),
      ),
    );
  }
}
