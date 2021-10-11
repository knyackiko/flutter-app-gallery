import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/home_content/home_content_view_model.dart';

import '../mock/mock_repo_repository_impl.dart';

void main() {
  group('HomeContentViewModel Tests', () {
    late ProviderContainer container;
    late HomeContentViewModel viewModel;

    setUp(() {
      container = ProviderContainer(overrides: [
        repoRepositoryProvider.overrideWithProvider(
          Provider<RepoRepository>((ref) => MockRepoRepositoryImpl()),
        ),
      ]);
      viewModel = container.read(homeContentViewModelProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('default state', () async {
      expect(viewModel.debugState.repositories.length, 3);
    });
  });
}
