import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_repo_app/view_model/main_page/main_page_view_model.dart';

void main() {
  group('MainPageViewModel Tests', () {
    late ProviderContainer container;
    late MainPageViewModel viewModel;

    setUp(() {
      container = ProviderContainer();
      viewModel = container.read(mainPageViewModelProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('updateSelectedIndex', () async {
      expect(viewModel.debugState.selectedIndex, 0);
      viewModel.updateSelectedIndex(2);
      expect(viewModel.debugState.selectedIndex, 2);
    });
  });
}
