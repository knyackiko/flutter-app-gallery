import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/favorite_content/favorite_content_view_model.dart';

import '../mock/mock_repo_repository_impl.dart';

void main() {
  group('FavoriteContentViewModel Tests', () {
    late ProviderContainer container;
    late FavoriteContentViewModel viewModel;

    setUp(() {
      container = ProviderContainer(overrides: [
        repoRepositoryProvider.overrideWithProvider(
          Provider<RepoRepository>((ref) => MockRepoRepositoryImpl()),
        ),
      ]);
      viewModel = container.read(favoriteContentViewModelProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('default state', () async {
      expect(viewModel.debugState.favoriteRepositories.length, 2);
    });
  });
}
