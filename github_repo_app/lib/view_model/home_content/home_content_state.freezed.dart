// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeContentStateTearOff {
  const _$HomeContentStateTearOff();

  _HomeContentState call({List<Repo> repositories = const []}) {
    return _HomeContentState(
      repositories: repositories,
    );
  }
}

/// @nodoc
const $HomeContentState = _$HomeContentStateTearOff();

/// @nodoc
mixin _$HomeContentState {
  List<Repo> get repositories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeContentStateCopyWith<HomeContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeContentStateCopyWith<$Res> {
  factory $HomeContentStateCopyWith(
          HomeContentState value, $Res Function(HomeContentState) then) =
      _$HomeContentStateCopyWithImpl<$Res>;
  $Res call({List<Repo> repositories});
}

/// @nodoc
class _$HomeContentStateCopyWithImpl<$Res>
    implements $HomeContentStateCopyWith<$Res> {
  _$HomeContentStateCopyWithImpl(this._value, this._then);

  final HomeContentState _value;
  // ignore: unused_field
  final $Res Function(HomeContentState) _then;

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
abstract class _$HomeContentStateCopyWith<$Res>
    implements $HomeContentStateCopyWith<$Res> {
  factory _$HomeContentStateCopyWith(
          _HomeContentState value, $Res Function(_HomeContentState) then) =
      __$HomeContentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Repo> repositories});
}

/// @nodoc
class __$HomeContentStateCopyWithImpl<$Res>
    extends _$HomeContentStateCopyWithImpl<$Res>
    implements _$HomeContentStateCopyWith<$Res> {
  __$HomeContentStateCopyWithImpl(
      _HomeContentState _value, $Res Function(_HomeContentState) _then)
      : super(_value, (v) => _then(v as _HomeContentState));

  @override
  _HomeContentState get _value => super._value as _HomeContentState;

  @override
  $Res call({
    Object? repositories = freezed,
  }) {
    return _then(_HomeContentState(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc

class _$_HomeContentState implements _HomeContentState {
  _$_HomeContentState({this.repositories = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Repo> repositories;

  @override
  String toString() {
    return 'HomeContentState(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeContentState &&
            (identical(other.repositories, repositories) ||
                const DeepCollectionEquality()
                    .equals(other.repositories, repositories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repositories);

  @JsonKey(ignore: true)
  @override
  _$HomeContentStateCopyWith<_HomeContentState> get copyWith =>
      __$HomeContentStateCopyWithImpl<_HomeContentState>(this, _$identity);
}

abstract class _HomeContentState implements HomeContentState {
  factory _HomeContentState({List<Repo> repositories}) = _$_HomeContentState;

  @override
  List<Repo> get repositories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeContentStateCopyWith<_HomeContentState> get copyWith =>
      throw _privateConstructorUsedError;
}
