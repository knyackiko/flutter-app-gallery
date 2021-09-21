import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_view_model.dart';

class FavoriteButton extends ConsumerWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final repoPageViewModel = watch(repoPageViewModelProvider.notifier);

    return FloatingActionButton(
      onPressed: () async {
        final String url = (await repoPageViewModel.getCurrentUrl()) ?? '';
        // ignore: deprecated_member_use
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text('Favorited $url')),
        );
      },
      child: const Icon(Icons.favorite),
    );
  }
}
