import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_view_model.dart';

class FavoriteButton extends ConsumerWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final repoPageViewModel = watch(repoPageViewModelProvider.notifier);
    final repoPageState = watch(repoPageViewModelProvider);

    return FloatingActionButton(
      onPressed: () => repoPageViewModel.toggleFavorite(),
      foregroundColor: repoPageState.isFavorite ? Colors.pink : Colors.white,
      child: const Icon(Icons.favorite),
    );
  }
}
