import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/view/main_page/repo_list_content/repo_list_item.dart';
import 'package:github_repo_app/view_model/repo_list_content/repo_list_content_view_model.dart';

class RepoListBody extends ConsumerWidget {
  const RepoListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final repoListContentViewModel =
        watch(repoListContentViewModelProvider.notifier);
    final repoListContentState = watch(repoListContentViewModelProvider);

    return RefreshIndicator(
      onRefresh: () => repoListContentViewModel.updateRepositories(),
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: repoListContentState.repositories.length,
        itemBuilder: (BuildContext context, int index) {
          final repo = repoListContentState.repositories[index];
          return RepoListItem(repo: FavoriteRepo.fromRepo(repo));
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 0),
      ),
    );
  }
}
