import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/favorite_content/favorite_content_state.dart';
import 'package:state_notifier/state_notifier.dart';

final favoriteContentViewModelProvider =
    StateNotifierProvider<FavoriteContentViewModel, FavoriteContentState>(
        (ref) => FavoriteContentViewModel(ref));

class FavoriteContentViewModel extends StateNotifier<FavoriteContentState> {
  FavoriteContentViewModel(ref) : super(FavoriteContentState()) {
    repoRepository = ref.read(repoRepositoryProvider);
    updateFavoriteRepositories();
  }

  late final RepoRepository repoRepository;

  updateFavoriteRepositories() async {
    final result = await repoRepository.filterFavorites();
    result.when(
      success: (repositories) {
        state = state.copyWith(favoriteRepositories: repositories);
      },
      failure: (reason) {
        state = state.copyWith(favoriteRepositories: []);
      },
    );
  }
}
