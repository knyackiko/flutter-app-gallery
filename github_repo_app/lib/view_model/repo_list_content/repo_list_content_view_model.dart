import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/repo_list_content/repo_list_content_state.dart';

final repoListContentViewModelProvider =
    StateNotifierProvider<RepoListContentViewModel, RepoListContentState>(
        (ref) => RepoListContentViewModel(ref));

class RepoListContentViewModel extends StateNotifier<RepoListContentState> {
  RepoListContentViewModel(ref) : super(RepoListContentState()) {
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
