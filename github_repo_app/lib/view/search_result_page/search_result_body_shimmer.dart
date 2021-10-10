import 'package:flutter/material.dart';
import 'package:github_repo_app/view/search_page/search_page_body_category.dart';
import 'package:github_repo_app/view/shared/shimmer.dart';

class SearchResultBodyShimmer extends StatelessWidget {
  const SearchResultBodyShimmer({required this.type, Key? key})
      : super(key: key);
  final SearchCategoryType type;

  Widget _child() {
    switch (type) {
      case SearchCategoryType.repository:
        return Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppShimmer.color,
                    radius: 12.0,
                  ),
                  const Padding(padding: EdgeInsets.only(left: 8)),
                  Container(color: AppShimmer.color, width: 100, height: 10),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 8)),
              Container(color: AppShimmer.color, width: 100, height: 10),
              const Padding(padding: EdgeInsets.only(top: 8)),
              Container(
                  color: AppShimmer.color, width: double.infinity, height: 10),
              const Padding(padding: EdgeInsets.only(top: 8)),
              Container(
                  color: AppShimmer.color, width: double.infinity, height: 10),
            ],
          ),
        );
      case SearchCategoryType.user:
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: AppShimmer.color,
            radius: 18.0,
          ),
          title: Container(
              color: AppShimmer.color, width: double.infinity, height: 10),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) =>
          AppShimmer(child: _child()),
    );
  }
}
