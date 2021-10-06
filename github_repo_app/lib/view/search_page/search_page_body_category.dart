import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:github_repo_app/view/search_page/search_page.dart';
import 'package:github_repo_app/view/search_result_page/search_result_page.dart';
import 'package:github_repo_app/view_model/search_box/search_box_view_model.dart';

class SearchPageBodyCategory extends ConsumerWidget {
  const SearchPageBodyCategory({Key? key}) : super(key: key);

  static final _categories = [
    SearchCategory(const Icon(Icons.book_outlined), 'Repositories with'),
    SearchCategory(const Icon(Icons.person_outlined), 'People with'),
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: _categories.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          tileColor: AppColors.white,
          leading: _categories[index].icon,
          title: Text(
              '${_categories[index].name} "${watch(searchBoxTextEditingControllerProvider).text}"'),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 12.0,
          ),
          onTap: () => Navigator.pushNamed(context, SearchResultPage.routeName),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 0),
    );
  }
}
