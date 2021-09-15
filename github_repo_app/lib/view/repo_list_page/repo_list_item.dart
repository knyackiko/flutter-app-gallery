import 'package:flutter/material.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';

class RepoListItem extends StatelessWidget {
  const RepoListItem({Key? key, required this.repo}) : super(key: key);
  final Repo repo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => debugPrint('tapped ${repo.name}'),
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
