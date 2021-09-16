import 'package:flutter/material.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';
import 'package:github_repo_app/view/repo_page/repo_page.dart';

class RepoListItem extends StatelessWidget {
  const RepoListItem({Key? key, required this.repo}) : super(key: key);
  final Repo repo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).pushNamed(RepoPage.routeName),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(repo.owner.avatarUrl),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${repo.owner.login}',
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
