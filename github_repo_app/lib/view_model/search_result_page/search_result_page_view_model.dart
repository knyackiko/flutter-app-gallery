import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/repo_repository.dart';
import 'package:github_repo_app/view/search_page/search_page_body_category.dart';
import 'package:github_repo_app/view_model/search_result_page/search_result_page_state.dart';

final searchResultPageViewModelProvider = StateNotifierProvider.autoDispose<
    SearchResultPageViewModel,
    SearchResultPageState>((ref) => SearchResultPageViewModel(ref));

class SearchResultPageViewModel extends StateNotifier<SearchResultPageState> {
  SearchResultPageViewModel(ref) : super(SearchResultPageState()) {
    _repoRepository = ref.read(repoRepositoryProvider);
  }

  late RepoRepository _repoRepository;

  updateSearchCondition(SearchCategoryType type, String text) {
    state = state.copyWith(type: type, text: text);
  }

  Future<void> updateResult() async {
    switch (state.type) {
      case SearchCategoryType.repository:
        await _updateRepositories();
        break;
      case SearchCategoryType.user:
        _updateUsers();
        break;
      default:
    }
  }

  Future<void> _updateRepositories() async {
    final result = await _repoRepository.findByName(state.text);
    result.when(
      success: (repositories) => state =
          state.copyWith(repositories: repositories, failureReason: null),
      failure: (failureReason) => state =
          state.copyWith(repositories: [], failureReason: failureReason),
    );
  }

  void _updateUsers() {
    // TODO: implement
  }
}
