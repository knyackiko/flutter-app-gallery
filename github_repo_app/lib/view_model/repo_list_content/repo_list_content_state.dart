import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';

part 'repo_list_content_state.freezed.dart';

@freezed
class RepoListContentState with _$RepoListContentState {
  factory RepoListContentState({
    @Default([]) List<Repo> repositories,
  }) = _RepoListContentState;
}
