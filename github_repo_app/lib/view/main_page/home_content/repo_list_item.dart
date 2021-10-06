import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/view/repo_page/repo_page.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_view_model.dart';

class RepoListItem extends ConsumerWidget {
  const RepoListItem({Key? key, required this.repo}) : super(key: key);
  final FavoriteRepo repo;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return ListTile(
      onTap: () {
        final repoPageViewModel = watch(repoPageViewModelProvider.notifier);
        repoPageViewModel.updateRepo(repo);
        Navigator.of(context).pushNamed(RepoPage.routeName);
      },
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(repo.avatarUrl),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            repo.ownerName,
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            repo.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 12.0,
      ),
    );
  }
}
