import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/repository/data_source/db/table/favorite_repo.dart';

part 'favorite_content_state.freezed.dart';

@freezed
class FavoriteContentState with _$FavoriteContentState {
  factory FavoriteContentState({
    @Default([]) List<FavoriteRepo> favoriteRepositories,
  }) = _FavoriteContentState;
}
