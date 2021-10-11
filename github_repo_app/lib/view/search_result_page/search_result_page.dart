import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/util/failure_reason/failure_reason.dart';
import 'package:github_repo_app/view/search_page/search_page_body_category.dart';
import 'package:github_repo_app/view/search_result_page/search_result_body.dart';
import 'package:github_repo_app/view/search_result_page/search_result_body_failed.dart';
import 'package:github_repo_app/view/search_result_page/search_result_body_shimmer.dart';
import 'package:github_repo_app/view_model/search_result_page/search_result_page_view_model.dart';

class SearchResultPage extends ConsumerWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  static const routeName = '/search-result';

  String _appBarTitle(SearchCategoryType type) {
    switch (type) {
      case SearchCategoryType.repository:
        return 'Repositories';
      case SearchCategoryType.user:
        return 'Users';
      default:
        return '';
    }
  }

  Widget _child(
    bool isLoading,
    FailureReason? failureReason,
    SearchCategoryType type,
  ) {
    if (failureReason != null) {
      return const SearchResultBodyFailed();
    }
    return isLoading
        ? SearchResultBodyShimmer(type: type)
        : const SearchResultBody();
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final searchResultPageViewModel =
        watch(searchResultPageViewModelProvider.notifier);
    final searchResultPageState = watch(searchResultPageViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle(searchResultPageState.type)),
      ),
      body: RefreshIndicator(
        onRefresh: searchResultPageViewModel.updateResult,
        child: _child(
          searchResultPageState.isLoading,
          searchResultPageState.failureReason,
          searchResultPageState.type,
        ),
      ),
    );
  }
}
