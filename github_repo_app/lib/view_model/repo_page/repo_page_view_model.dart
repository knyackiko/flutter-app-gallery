import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_state.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:webview_flutter/platform_interface.dart';

final repoPageViewModelProvider =
    StateNotifierProvider.autoDispose<RepoPageViewModel, RepoPageState>(
        (ref) => RepoPageViewModel());

class RepoPageViewModel extends StateNotifier<RepoPageState> {
  RepoPageViewModel() : super(RepoPageState());

  void updateProgress(int progress) {
    state = state.copyWith(progress: progress);
  }

  void updateError(WebResourceError? error) {
    state = state.copyWith(error: error);
  }
}
