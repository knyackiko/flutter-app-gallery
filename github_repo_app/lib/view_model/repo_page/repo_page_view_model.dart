import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/model/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/favorite_content/favorite_content_view_model.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

final repoPageViewModelProvider =
    StateNotifierProvider.autoDispose<RepoPageViewModel, RepoPageState>(
        (ref) => RepoPageViewModel(ref));

class RepoPageViewModel extends StateNotifier<RepoPageState> {
  RepoPageViewModel(ref) : super(RepoPageState()) {
    _repoRepository = ref.read(repoRepositoryProvider);
    _favoriteContentViewModel =
        ref.read(favoriteContentViewModelProvider.notifier);
  }

  late RepoRepository _repoRepository;
  late FavoriteContentViewModel _favoriteContentViewModel;

  Future<void> updateRepo(FavoriteRepo? repo) async {
    final isFavorite = await _isFavorite(repo);
    state = state.copyWith(repo: repo, isFavorite: isFavorite);
  }

  void updateProgress(int progress) {
    state = state.copyWith(progress: progress);
  }

  void updateError(WebResourceError? error) {
    state = state.copyWith(error: error);
  }

  void updateWebViewController(WebViewController? webViewController) {
    state = state.copyWith(webViewController: webViewController);
  }

  void reload() {
    updateError(null);
    state.webViewController?.reload();
  }

  Future<void> toggleFavorite() async {
    if (state.isFavorite) {
      await _removeFromFavorite();
      _favoriteContentViewModel.updateFavoriteRepositories();
    } else {
      await _addToFavorite();
      _favoriteContentViewModel.updateFavoriteRepositories();
    }
  }

  Future<void> _addToFavorite() async {
    final repo = state.repo;
    if (repo == null) {
      return;
    }
    await _repoRepository.addToFavorite(repo);
    state = state.copyWith(isFavorite: true);
  }

  Future<void> _removeFromFavorite() async {
    final repo = state.repo;
    if (repo == null) {
      return;
    }
    await _repoRepository.removeFromFavorite(repo);
    state = state.copyWith(isFavorite: false);
  }

  Future<bool> _isFavorite(FavoriteRepo? repo) async {
    if (repo == null) {
      return false;
    }

    final result = await _repoRepository.findFavorite(repo.id);
    return result.when(
      success: (repos) => repos.length == 1,
      failure: (reason) => false,
    );
  }
}
