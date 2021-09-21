import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view_model/main_page/main_page_state.dart';
import 'package:state_notifier/state_notifier.dart';

final mainPageViewModelProvider =
    StateNotifierProvider<MainPageViewModel, MainPageState>(
        (ref) => MainPageViewModel());

class MainPageViewModel extends StateNotifier<MainPageState> {
  MainPageViewModel() : super(MainPageState());

  void updateSelectedIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}
