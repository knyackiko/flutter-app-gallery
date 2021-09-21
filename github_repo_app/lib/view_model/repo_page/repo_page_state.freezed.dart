// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepoPageStateTearOff {
  const _$RepoPageStateTearOff();

  _RepoPageState call({int progress = 0, WebResourceError? error}) {
    return _RepoPageState(
      progress: progress,
      error: error,
    );
  }
}

/// @nodoc
const $RepoPageState = _$RepoPageStateTearOff();

/// @nodoc
mixin _$RepoPageState {
  int get progress => throw _privateConstructorUsedError;
  WebResourceError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoPageStateCopyWith<RepoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoPageStateCopyWith<$Res> {
  factory $RepoPageStateCopyWith(
          RepoPageState value, $Res Function(RepoPageState) then) =
      _$RepoPageStateCopyWithImpl<$Res>;
  $Res call({int progress, WebResourceError? error});
}

/// @nodoc
class _$RepoPageStateCopyWithImpl<$Res>
    implements $RepoPageStateCopyWith<$Res> {
  _$RepoPageStateCopyWithImpl(this._value, this._then);

  final RepoPageState _value;
  // ignore: unused_field
  final $Res Function(RepoPageState) _then;

  @override
  $Res call({
    Object? progress = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as WebResourceError?,
    ));
  }
}

/// @nodoc
abstract class _$RepoPageStateCopyWith<$Res>
    implements $RepoPageStateCopyWith<$Res> {
  factory _$RepoPageStateCopyWith(
          _RepoPageState value, $Res Function(_RepoPageState) then) =
      __$RepoPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int progress, WebResourceError? error});
}

/// @nodoc
class __$RepoPageStateCopyWithImpl<$Res>
    extends _$RepoPageStateCopyWithImpl<$Res>
    implements _$RepoPageStateCopyWith<$Res> {
  __$RepoPageStateCopyWithImpl(
      _RepoPageState _value, $Res Function(_RepoPageState) _then)
      : super(_value, (v) => _then(v as _RepoPageState));

  @override
  _RepoPageState get _value => super._value as _RepoPageState;

  @override
  $Res call({
    Object? progress = freezed,
    Object? error = freezed,
  }) {
    return _then(_RepoPageState(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as WebResourceError?,
    ));
  }
}

/// @nodoc

class _$_RepoPageState implements _RepoPageState {
  _$_RepoPageState({this.progress = 0, this.error});

  @JsonKey(defaultValue: 0)
  @override
  final int progress;
  @override
  final WebResourceError? error;

  @override
  String toString() {
    return 'RepoPageState(progress: $progress, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepoPageState &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(progress) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$RepoPageStateCopyWith<_RepoPageState> get copyWith =>
      __$RepoPageStateCopyWithImpl<_RepoPageState>(this, _$identity);
}

abstract class _RepoPageState implements RepoPageState {
  factory _RepoPageState({int progress, WebResourceError? error}) =
      _$_RepoPageState;

  @override
  int get progress => throw _privateConstructorUsedError;
  @override
  WebResourceError? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepoPageStateCopyWith<_RepoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
