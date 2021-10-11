import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/repository/repo_repository.dart';
import 'package:github_repo_app/repository/user_repository.dart';
import 'package:github_repo_app/view/search_page/search_page_body_category.dart';
import 'package:github_repo_app/view_model/search_result_page/search_result_page_view_model.dart';

import '../mock/mock_repo_repository_impl.dart';
import '../mock/mock_user_repository_impl.dart';

void main() {
  group('SearchResultPageViewModel Tests', () {
    late ProviderContainer container;
    late SearchResultPageViewModel viewModel;

    setUp(() {
      container = ProviderContainer(overrides: [
        repoRepositoryProvider.overrideWithProvider(
          Provider<RepoRepository>((ref) => MockRepoRepositoryImpl()),
        ),
        userRepositoryProvider.overrideWithProvider(
          Provider<UserRepository>((ref) => MockUserRepositoryImpl()),
        ),
      ]);
      viewModel =
          container.listen(searchResultPageViewModelProvider.notifier).read();
    });

    tearDown(() {
      container.dispose();
    });

    test('updateSearchCondition', () {
      expect(viewModel.debugState.type, SearchCategoryType.repository);
      expect(viewModel.debugState.text, '');

      const type = SearchCategoryType.user;
      const text = 'text';
      viewModel.updateSearchCondition(type, text);

      expect(viewModel.debugState.type, type);
      expect(viewModel.debugState.text, text);
    });

    group('updateResult', () {
      test('リポジトリ検索の場合', () async {
        expect(viewModel.debugState.type, SearchCategoryType.repository);

        await viewModel.updateResult();

        expect(viewModel.debugState.repositories.length, 3);
        expect(viewModel.debugState.failureReason, null);
        expect(viewModel.debugState.isLoading, false);
        expect(viewModel.debugState.users.length, 0);
      });

      test('ユーザ検索の場合', () async {
        viewModel.updateSearchCondition(SearchCategoryType.user, '');
        expect(viewModel.debugState.type, SearchCategoryType.user);

        await viewModel.updateResult();

        expect(viewModel.debugState.users.length, 4);
        expect(viewModel.debugState.failureReason, null);
        expect(viewModel.debugState.isLoading, false);
        expect(viewModel.debugState.repositories.length, 0);
      });
    });
  });
}
