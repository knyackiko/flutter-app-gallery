import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view/main_page/repo_list_content/repo_list_item.dart';
import 'package:github_repo_app/view_model/favorite_content/favorite_content_view_model.dart';

class FavoriteBody extends ConsumerWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final favoriteContentViewModel =
        watch(favoriteContentViewModelProvider.notifier);
    final favoriteContentState = watch(favoriteContentViewModelProvider);

    return RefreshIndicator(
      onRefresh: () => favoriteContentViewModel.updateFavoriteRepositories(),
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: favoriteContentState.favoriteRepositories.length,
        itemBuilder: (BuildContext context, int index) {
          final favoriteRepo = favoriteContentState.favoriteRepositories[index];
          return RepoListItem(repo: favoriteRepo);
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 0),
      ),
    );
  }
}
