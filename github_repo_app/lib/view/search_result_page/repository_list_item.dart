import 'package:flutter/material.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:github_repo_app/entity/repo/repo.dart';
import 'package:intl/intl.dart';

class RepositoryListItem extends StatelessWidget {
  const RepositoryListItem({
    required this.repo,
    this.onTap,
    Key? key,
  }) : super(key: key);
  final Repo repo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(repo.owner.avatarUrl),
                  radius: 12.0,
                ),
                const Padding(padding: EdgeInsets.only(left: 8)),
                Text(
                  repo.owner.login,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Text(
              repo.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Text(repo.description ?? ''),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Row(children: [
              const Icon(
                Icons.star_border_rounded,
                size: 20.0,
                color: AppColors.darkGrey,
              ),
              Text(NumberFormat().format(repo.stargazersCount)),
              const Padding(padding: EdgeInsets.only(left: 12)),
              if (repo.language != null) ...[
                Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
                Text(repo.language ?? ''),
              ]
            ]),
          ],
        ),
      ),
    );
  }
}
