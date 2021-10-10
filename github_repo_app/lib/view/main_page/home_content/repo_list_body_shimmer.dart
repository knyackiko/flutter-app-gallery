import 'package:flutter/material.dart';
import 'package:github_repo_app/view/shared/shimmer.dart';

class RepoListBodyShimmer extends StatelessWidget {
  const RepoListBodyShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => AppShimmer(
        child: ListTile(
          leading: CircleAvatar(backgroundColor: AppShimmer.color),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AppShimmer.color,
                width: 100,
                height: 10,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 4)),
              Container(
                color: AppShimmer.color,
                width: 260,
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
