import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view/search_page/search_page_body_category.dart';
import 'package:github_repo_app/view/search_result_page/repository_list_item.dart';
import 'package:github_repo_app/view/search_result_page/user_list_item.dart';
import 'package:github_repo_app/view_model/search_result_page/search_result_page_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultBody extends ConsumerWidget {
  const SearchResultBody({Key? key}) : super(key: key);

  void open(BuildContext context, String? url) {
    if (url == null || url.isEmpty) {
      return;
    }
    launch(url, statusBarBrightness: Theme.of(context).brightness);
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final searchResultPageState = watch(searchResultPageViewModelProvider);

    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: searchResultPageState.resultLength,
      itemBuilder: (BuildContext context, int index) {
        switch (searchResultPageState.type) {
          case SearchCategoryType.repository:
            return RepositoryListItem(
              repo: searchResultPageState.repositories[index],
              onTap: () => open(
                  context, searchResultPageState.repositories[index].htmlUrl),
            );
          case SearchCategoryType.user:
            return UserListItem(
              user: searchResultPageState.users[index],
              onTap: () =>
                  open(context, searchResultPageState.users[index].htmlUrl),
            );
          default:
            return Container();
        }
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 0),
    );
  }
}
