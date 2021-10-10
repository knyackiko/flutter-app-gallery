import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/entity/repo/repo.dart';

part 'home_content_state.freezed.dart';

@freezed
class HomeContentState with _$HomeContentState {
  factory HomeContentState({
    @Default([]) List<Repo> repositories,
    @Default(false) bool isLoading,
  }) = _HomeContentState;
}
