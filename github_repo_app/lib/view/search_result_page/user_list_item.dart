import 'package:flutter/material.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:github_repo_app/model/entity/owner/owner.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({required this.user, this.onTap, Key? key})
      : super(key: key);

  final Owner user;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: AppColors.white,
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(user.avatarUrl),
        radius: 18.0,
      ),
      title: Text(
        user.login,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
