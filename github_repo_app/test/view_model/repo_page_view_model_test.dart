import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/entity/owner/owner.dart';
import 'package:github_repo_app/entity/repo/repo.dart';
import 'package:github_repo_app/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/repository/repo_repository.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_view_model.dart';
import 'package:webview_flutter/platform_interface.dart';

import '../mock/mock_repo_repository_impl.dart';

void main() {
  group('RepoPageViewModel Tests', () {
    late ProviderContainer container;
    late RepoPageViewModel viewModel;

    setUp(() {
      container = ProviderContainer(overrides: [
        repoRepositoryProvider.overrideWithProvider(
          Provider<RepoRepository>((ref) => MockRepoRepositoryImpl()),
        ),
      ]);
      viewModel = container.listen(repoPageViewModelProvider.notifier).read();
    });

    tearDown(() {
      container.dispose();
    });

    group('updateRepo', () {
      test('指定したリポジトリがnull', () async {
        expect(viewModel.debugState.repo, null);
        expect(viewModel.debugState.isFavorite, false);

        await viewModel.updateRepo(null);

        expect(viewModel.debugState.repo, null);
        expect(viewModel.debugState.isFavorite, false);
      });

      test('指定したリポジトリがお気に入り登録されている場合', () async {
        expect(viewModel.debugState.repo, null);
        expect(viewModel.debugState.isFavorite, false);

        final owner = Owner(login: '', id: 0, avatarUrl: '');
        final date = DateTime.now();
        final repo = FavoriteRepo.fromRepo(Repo(
          id: 1,
          name: 'repo1',
          owner: owner,
          fullName: 'repo1-repo1',
          htmlUrl: '',
          private: false,
          createdAt: date,
          updatedAt: date,
          pushedAt: date,
        ));

        await viewModel.updateRepo(repo);

        expect(viewModel.debugState.repo, repo);
        expect(viewModel.debugState.isFavorite, true);
      });

      test('指定したリポジトリがお気に入り登録されていない場合', () async {
        expect(viewModel.debugState.repo, null);
        expect(viewModel.debugState.isFavorite, false);

        final owner = Owner(login: '', id: 0, avatarUrl: '');
        final date = DateTime.now();
        final repo = FavoriteRepo.fromRepo(Repo(
          id: 2,
          name: 'repo2',
          owner: owner,
          fullName: 'repo2-repo2',
          htmlUrl: '',
          private: false,
          createdAt: date,
          updatedAt: date,
          pushedAt: date,
        ));
        await viewModel.updateRepo(repo);

        expect(viewModel.debugState.repo, repo);
        expect(viewModel.debugState.isFavorite, false);
      });
    });
    test('updateProgress', () {
      expect(viewModel.debugState.progress, 0);

      const progress = 50;
      viewModel.updateProgress(progress);

      expect(viewModel.debugState.progress, progress);
    });

    test('updateError', () {
      expect(viewModel.debugState.error, null);

      final error =
          WebResourceError(errorCode: 1, description: 'web resource error - 1');
      viewModel.updateError(error);

      expect(viewModel.debugState.error, error);
    });

    test('reload', () {
      final error =
          WebResourceError(errorCode: 1, description: 'web resource error - 1');
      viewModel.updateError(error);
      expect(viewModel.debugState.error, error);

      viewModel.reload();

      expect(viewModel.debugState.error, null);
    });

    group('toggleFavorite', () {
      test('add to favorite', () async {
        final owner = Owner(login: '', id: 0, avatarUrl: '');
        final date = DateTime.now();
        final repo = FavoriteRepo.fromRepo(Repo(
          id: 2,
          name: 'repo2',
          owner: owner,
          fullName: 'repo2-repo2',
          htmlUrl: '',
          private: false,
          createdAt: date,
          updatedAt: date,
          pushedAt: date,
        ));
        await viewModel.updateRepo(repo);

        expect(viewModel.debugState.repo, repo);
        expect(viewModel.debugState.isFavorite, false);

        await viewModel.toggleFavorite();

        expect(viewModel.debugState.repo, repo);
        expect(viewModel.debugState.isFavorite, true);
      });

      test('remove from favorite', () async {
        final owner = Owner(login: '', id: 0, avatarUrl: '');
        final date = DateTime.now();
        final repo = FavoriteRepo.fromRepo(Repo(
          id: 1,
          name: 'repo1',
          owner: owner,
          fullName: 'repo1-repo1',
          htmlUrl: '',
          private: false,
          createdAt: date,
          updatedAt: date,
          pushedAt: date,
        ));
        await viewModel.updateRepo(repo);

        expect(viewModel.debugState.repo, repo);
        expect(viewModel.debugState.isFavorite, true);

        await viewModel.toggleFavorite();

        expect(viewModel.debugState.repo, repo);
        expect(viewModel.debugState.isFavorite, false);
      });
    });
  });
}
