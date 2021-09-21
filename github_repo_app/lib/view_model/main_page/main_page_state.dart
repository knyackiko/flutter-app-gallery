import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_state.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  factory MainPageState({
    @Default(0) int selectedIndex,
  }) = _MainPageState;
}
