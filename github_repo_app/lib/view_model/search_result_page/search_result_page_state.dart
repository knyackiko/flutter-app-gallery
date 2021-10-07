import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/model/entity/owner/owner.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';
import 'package:github_repo_app/util/failure_reason/failure_reason.dart';
import 'package:github_repo_app/view/search_page/search_page_body_category.dart';

part 'search_result_page_state.freezed.dart';

@freezed
class SearchResultPageState with _$SearchResultPageState {
  const SearchResultPageState._();
  factory SearchResultPageState({
    @Default(SearchCategoryType.repository) SearchCategoryType type,
    @Default('') String text,
    FailureReason? failureReason,
    @Default([]) List<Repo> repositories,
    @Default([]) List<Owner> users,
  }) = _SearchResultPageState;

  int get resultLength {
    switch (type) {
      case SearchCategoryType.repository:
        return repositories.length;
      case SearchCategoryType.user:
        return users.length;
      default:
        return 0;
    }
  }
}
