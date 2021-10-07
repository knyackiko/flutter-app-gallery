import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:github_repo_app/view/search_page/search_page_body_category.dart';
import 'package:github_repo_app/view/search_page/search_page_body_history.dart';
import 'package:github_repo_app/view/shared/search_box.dart';
import 'package:github_repo_app/view_model/search_box/search_box_view_model.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);
  static const routeName = '/search';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        title: SearchBox(
          param: SearchBoxParam(height: SearchBoxHeight.sm),
        ),
      ),
      body: watch(searchBoxTextEditingControllerProvider).text.isEmpty
          ? const SearchPageBodyHistory()
          : const SearchPageBodyCategory(),
    );
  }
}
