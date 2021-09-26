// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteContentStateTearOff {
  const _$FavoriteContentStateTearOff();

  _FavoriteContentState call(
      {List<FavoriteRepo> favoriteRepositories = const []}) {
    return _FavoriteContentState(
      favoriteRepositories: favoriteRepositories,
    );
  }
}

/// @nodoc
const $FavoriteContentState = _$FavoriteContentStateTearOff();

/// @nodoc
mixin _$FavoriteContentState {
  List<FavoriteRepo> get favoriteRepositories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteContentStateCopyWith<FavoriteContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteContentStateCopyWith<$Res> {
  factory $FavoriteContentStateCopyWith(FavoriteContentState value,
          $Res Function(FavoriteContentState) then) =
      _$FavoriteContentStateCopyWithImpl<$Res>;
  $Res call({List<FavoriteRepo> favoriteRepositories});
}

/// @nodoc
class _$FavoriteContentStateCopyWithImpl<$Res>
    implements $FavoriteContentStateCopyWith<$Res> {
  _$FavoriteContentStateCopyWithImpl(this._value, this._then);

  final FavoriteContentState _value;
  // ignore: unused_field
  final $Res Function(FavoriteContentState) _then;

  @override
  $Res call({
    Object? favoriteRepositories = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteRepositories: favoriteRepositories == freezed
          ? _value.favoriteRepositories
          : favoriteRepositories // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRepo>,
    ));
  }
}

/// @nodoc
abstract class _$FavoriteContentStateCopyWith<$Res>
    implements $FavoriteContentStateCopyWith<$Res> {
  factory _$FavoriteContentStateCopyWith(_FavoriteContentState value,
          $Res Function(_FavoriteContentState) then) =
      __$FavoriteContentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<FavoriteRepo> favoriteRepositories});
}

/// @nodoc
class __$FavoriteContentStateCopyWithImpl<$Res>
    extends _$FavoriteContentStateCopyWithImpl<$Res>
    implements _$FavoriteContentStateCopyWith<$Res> {
  __$FavoriteContentStateCopyWithImpl(
      _FavoriteContentState _value, $Res Function(_FavoriteContentState) _then)
      : super(_value, (v) => _then(v as _FavoriteContentState));

  @override
  _FavoriteContentState get _value => super._value as _FavoriteContentState;

  @override
  $Res call({
    Object? favoriteRepositories = freezed,
  }) {
    return _then(_FavoriteContentState(
      favoriteRepositories: favoriteRepositories == freezed
          ? _value.favoriteRepositories
          : favoriteRepositories // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRepo>,
    ));
  }
}

/// @nodoc

class _$_FavoriteContentState implements _FavoriteContentState {
  _$_FavoriteContentState({this.favoriteRepositories = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<FavoriteRepo> favoriteRepositories;

  @override
  String toString() {
    return 'FavoriteContentState(favoriteRepositories: $favoriteRepositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteContentState &&
            (identical(other.favoriteRepositories, favoriteRepositories) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteRepositories, favoriteRepositories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoriteRepositories);

  @JsonKey(ignore: true)
  @override
  _$FavoriteContentStateCopyWith<_FavoriteContentState> get copyWith =>
      __$FavoriteContentStateCopyWithImpl<_FavoriteContentState>(
          this, _$identity);
}

abstract class _FavoriteContentState implements FavoriteContentState {
  factory _FavoriteContentState({List<FavoriteRepo> favoriteRepositories}) =
      _$_FavoriteContentState;

  @override
  List<FavoriteRepo> get favoriteRepositories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteContentStateCopyWith<_FavoriteContentState> get copyWith =>
      throw _privateConstructorUsedError;
}
