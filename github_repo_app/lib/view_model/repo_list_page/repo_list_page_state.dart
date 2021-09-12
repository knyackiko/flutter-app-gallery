import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';

part 'repo_list_page_state.freezed.dart';

@freezed
class RepoListPageState with _$RepoListPageState {
  factory RepoListPageState({
    @Default([]) List<Repo> repositories,
  }) = _RepoListPageState;
}
