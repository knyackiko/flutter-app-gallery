// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepoListPageStateTearOff {
  const _$RepoListPageStateTearOff();

  _RepoListPageState call({List<Repo> repositories = const []}) {
    return _RepoListPageState(
      repositories: repositories,
    );
  }
}

/// @nodoc
const $RepoListPageState = _$RepoListPageStateTearOff();

/// @nodoc
mixin _$RepoListPageState {
  List<Repo> get repositories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoListPageStateCopyWith<RepoListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoListPageStateCopyWith<$Res> {
  factory $RepoListPageStateCopyWith(
          RepoListPageState value, $Res Function(RepoListPageState) then) =
      _$RepoListPageStateCopyWithImpl<$Res>;
  $Res call({List<Repo> repositories});
}

/// @nodoc
class _$RepoListPageStateCopyWithImpl<$Res>
    implements $RepoListPageStateCopyWith<$Res> {
  _$RepoListPageStateCopyWithImpl(this._value, this._then);

  final RepoListPageState _value;
  // ignore: unused_field
  final $Res Function(RepoListPageState) _then;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_value.copyWith(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc
abstract class _$RepoListPageStateCopyWith<$Res>
    implements $RepoListPageStateCopyWith<$Res> {
  factory _$RepoListPageStateCopyWith(
          _RepoListPageState value, $Res Function(_RepoListPageState) then) =
      __$RepoListPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Repo> repositories});
}

/// @nodoc
class __$RepoListPageStateCopyWithImpl<$Res>
    extends _$RepoListPageStateCopyWithImpl<$Res>
    implements _$RepoListPageStateCopyWith<$Res> {
  __$RepoListPageStateCopyWithImpl(
      _RepoListPageState _value, $Res Function(_RepoListPageState) _then)
      : super(_value, (v) => _then(v as _RepoListPageState));

  @override
  _RepoListPageState get _value => super._value as _RepoListPageState;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_RepoListPageState(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc

class _$_RepoListPageState implements _RepoListPageState {
  _$_RepoListPageState({this.repositories = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Repo> repositories;

  @override
  String toString() {
    return 'RepoListPageState(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepoListPageState &&
            (identical(other.repositories, repositories) ||
                const DeepCollectionEquality()
                    .equals(other.repositories, repositories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repositories);

  @JsonKey(ignore: true)
  @override
  _$RepoListPageStateCopyWith<_RepoListPageState> get copyWith =>
      __$RepoListPageStateCopyWithImpl<_RepoListPageState>(this, _$identity);
}

abstract class _RepoListPageState implements RepoListPageState {
  factory _RepoListPageState({List<Repo> repositories}) = _$_RepoListPageState;

  @override
  List<Repo> get repositories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepoListPageStateCopyWith<_RepoListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
