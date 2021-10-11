import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/repository/data_source/db/table/favorite_repo.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'repo_page_state.freezed.dart';

@freezed
class RepoPageState with _$RepoPageState {
  factory RepoPageState({
    FavoriteRepo? repo,
    @Default(false) bool isFavorite,
    @Default(0) int progress,
    WebResourceError? error,
    WebViewController? webViewController,
  }) = _RepoPageState;
}
