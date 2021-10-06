import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';

part 'home_content_state.freezed.dart';

@freezed
class HomeContentState with _$HomeContentState {
  factory HomeContentState({
    @Default([]) List<Repo> repositories,
  }) = _HomeContentState;
}
