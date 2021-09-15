import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/repo_list_page/repo_list_page_state.dart';

final repoListPageViewModelProvider =
    StateNotifierProvider<RepoListPageViewModel, RepoListPageState>(
        (ref) => RepoListPageViewModel(ref));

class RepoListPageViewModel extends StateNotifier<RepoListPageState> {
  RepoListPageViewModel(ref) : super(RepoListPageState()) {
    repoRepository = ref.read(repoRepositoryProvider);
    updateRepositories();
  }

  late final RepoRepository repoRepository;

  updateRepositories() async {
    final result = await repoRepository.findByUserName('kyklades');
    result.when(
      success: (repositories) {
        state = state.copyWith(repositories: repositories);
      },
      failure: (reason) {
        state = state.copyWith(repositories: []);
      },
    );
  }
}
