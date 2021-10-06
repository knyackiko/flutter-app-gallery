import 'package:flutter/material.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:github_repo_app/view/shared/search_box.dart';

class RepoListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RepoListAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'ホーム',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: AppColors.white),
            ),
            SearchBox(
                param:
                    SearchBoxParam(enabled: false, height: SearchBoxHeight.sm)),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}
