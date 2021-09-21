// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainPageStateTearOff {
  const _$MainPageStateTearOff();

  _MainPageState call({int selectedIndex = 0}) {
    return _MainPageState(
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
const $MainPageState = _$MainPageStateTearOff();

/// @nodoc
mixin _$MainPageState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  final MainPageState _value;
  // ignore: unused_field
  final $Res Function(MainPageState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MainPageStateCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$MainPageStateCopyWith(
          _MainPageState value, $Res Function(_MainPageState) then) =
      __$MainPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex});
}

/// @nodoc
class __$MainPageStateCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res>
    implements _$MainPageStateCopyWith<$Res> {
  __$MainPageStateCopyWithImpl(
      _MainPageState _value, $Res Function(_MainPageState) _then)
      : super(_value, (v) => _then(v as _MainPageState));

  @override
  _MainPageState get _value => super._value as _MainPageState;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_MainPageState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainPageState implements _MainPageState {
  _$_MainPageState({this.selectedIndex = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'MainPageState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainPageState &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedIndex);

  @JsonKey(ignore: true)
  @override
  _$MainPageStateCopyWith<_MainPageState> get copyWith =>
      __$MainPageStateCopyWithImpl<_MainPageState>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  factory _MainPageState({int selectedIndex}) = _$_MainPageState;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainPageStateCopyWith<_MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
