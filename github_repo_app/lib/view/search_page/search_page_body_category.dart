import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:github_repo_app/view/search_result_page/search_result_page.dart';
import 'package:github_repo_app/view_model/search_box/search_box_view_model.dart';
import 'package:github_repo_app/view_model/search_result_page/search_result_page_view_model.dart';

class SearchPageBodyCategory extends ConsumerWidget {
  const SearchPageBodyCategory({Key? key}) : super(key: key);

  static final _categories = [
    SearchCategory(
      SearchCategoryType.repository,
      const Icon(Icons.book_outlined),
      'Repositories with',
    ),
    SearchCategory(
      SearchCategoryType.user,
      const Icon(Icons.person_outlined),
      'People with',
    ),
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final text = watch(searchBoxTextEditingControllerProvider).text;
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: _categories.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          tileColor: AppColors.white,
          leading: _categories[index].icon,
          title: Text('${_categories[index].name} "$text"'),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 12.0,
          ),
          onTap: () {
            watch(searchResultPageViewModelProvider.notifier)
                .updateSearchCondition(_categories[index].type, text);
            watch(searchResultPageViewModelProvider.notifier).updateResult();
            Navigator.pushNamed(context, SearchResultPage.routeName);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 0),
    );
  }
}

class SearchCategory {
  final SearchCategoryType type;
  final Icon icon;
  final String name;

  SearchCategory(this.type, this.icon, this.name);
}

enum SearchCategoryType {
  repository,
  user,
}
