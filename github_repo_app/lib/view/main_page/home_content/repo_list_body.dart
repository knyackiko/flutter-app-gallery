import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/view/main_page/home_content/repo_list_item.dart';
import 'package:github_repo_app/view_model/home_content/home_content_view_model.dart';

class RepoListBody extends ConsumerWidget {
  const RepoListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final homeContentViewModel = watch(homeContentViewModelProvider.notifier);
    final homeContentState = watch(homeContentViewModelProvider);

    return RefreshIndicator(
      onRefresh: () => homeContentViewModel.updateRepositories(),
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: homeContentState.repositories.length,
        itemBuilder: (BuildContext context, int index) {
          final repo = homeContentState.repositories[index];
          return RepoListItem(repo: FavoriteRepo.fromRepo(repo));
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 0),
      ),
    );
  }
}
