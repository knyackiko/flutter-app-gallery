import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/home_content/home_content_state.dart';

final homeContentViewModelProvider =
    StateNotifierProvider<HomeContentViewModel, HomeContentState>(
        (ref) => HomeContentViewModel(ref));

class HomeContentViewModel extends StateNotifier<HomeContentState> {
  HomeContentViewModel(ref) : super(HomeContentState()) {
    repoRepository = ref.read(repoRepositoryProvider);
    updateRepositories();
  }

  late final RepoRepository repoRepository;

  updateRepositories() async {
    state = state.copyWith(isLoading: true);
    final result = await repoRepository.findByUserName('kyklades');
    result.when(
      success: (repositories) {
        state = state.copyWith(repositories: repositories, isLoading: false);
      },
      failure: (reason) {
        state = state.copyWith(repositories: [], isLoading: false);
      },
    );
  }
}
