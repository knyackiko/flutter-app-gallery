import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'repo_page_state.freezed.dart';

@freezed
class RepoPageState with _$RepoPageState {
  factory RepoPageState({
    @Default(0) int progress,
    WebResourceError? error,
    WebViewController? webViewController,
  }) = _RepoPageState;
}
