import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view_model/repo_list_page/repo_list_page_view_model.dart';

class RepoListPage extends ConsumerWidget {
  const RepoListPage({Key? key, required this.title}) : super(key: key);
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
        padding: const EdgeInsets.all(8),
        itemCount: repoListPageState.repositories.length,
        itemBuilder: (BuildContext context, int index) =>
            Text(repoListPageState.repositories[index].name),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
