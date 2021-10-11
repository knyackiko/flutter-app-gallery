// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_result_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchResultPageStateTearOff {
  const _$SearchResultPageStateTearOff();

  _SearchResultPageState call(
      {SearchCategoryType type = SearchCategoryType.repository,
      String text = '',
      FailureReason? failureReason,
      List<Repo> repositories = const [],
      List<Owner> users = const [],
      bool isLoading = false}) {
    return _SearchResultPageState(
      type: type,
      text: text,
      failureReason: failureReason,
      repositories: repositories,
      users: users,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $SearchResultPageState = _$SearchResultPageStateTearOff();

/// @nodoc
mixin _$SearchResultPageState {
  SearchCategoryType get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  FailureReason? get failureReason => throw _privateConstructorUsedError;
  List<Repo> get repositories => throw _privateConstructorUsedError;
  List<Owner> get users => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultPageStateCopyWith<SearchResultPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultPageStateCopyWith<$Res> {
  factory $SearchResultPageStateCopyWith(SearchResultPageState value,
          $Res Function(SearchResultPageState) then) =
      _$SearchResultPageStateCopyWithImpl<$Res>;
  $Res call(
      {SearchCategoryType type,
      String text,
      FailureReason? failureReason,
      List<Repo> repositories,
      List<Owner> users,
      bool isLoading});

  $FailureReasonCopyWith<$Res>? get failureReason;
}

/// @nodoc
class _$SearchResultPageStateCopyWithImpl<$Res>
    implements $SearchResultPageStateCopyWith<$Res> {
  _$SearchResultPageStateCopyWithImpl(this._value, this._then);

  final SearchResultPageState _value;
  // ignore: unused_field
  final $Res Function(SearchResultPageState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? failureReason = freezed,
    Object? repositories = freezed,
    Object? users = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchCategoryType,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      failureReason: failureReason == freezed
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as FailureReason?,
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $FailureReasonCopyWith<$Res>? get failureReason {
    if (_value.failureReason == null) {
      return null;
    }

    return $FailureReasonCopyWith<$Res>(_value.failureReason!, (value) {
      return _then(_value.copyWith(failureReason: value));
    });
  }
}

/// @nodoc
abstract class _$SearchResultPageStateCopyWith<$Res>
    implements $SearchResultPageStateCopyWith<$Res> {
  factory _$SearchResultPageStateCopyWith(_SearchResultPageState value,
          $Res Function(_SearchResultPageState) then) =
      __$SearchResultPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchCategoryType type,
      String text,
      FailureReason? failureReason,
      List<Repo> repositories,
      List<Owner> users,
      bool isLoading});

  @override
  $FailureReasonCopyWith<$Res>? get failureReason;
}

/// @nodoc
class __$SearchResultPageStateCopyWithImpl<$Res>
    extends _$SearchResultPageStateCopyWithImpl<$Res>
    implements _$SearchResultPageStateCopyWith<$Res> {
  __$SearchResultPageStateCopyWithImpl(_SearchResultPageState _value,
      $Res Function(_SearchResultPageState) _then)
      : super(_value, (v) => _then(v as _SearchResultPageState));

  @override
  _SearchResultPageState get _value => super._value as _SearchResultPageState;

  @override
  $Res call({
    Object? type = freezed,
    Object? text = freezed,
    Object? failureReason = freezed,
    Object? repositories = freezed,
    Object? users = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_SearchResultPageState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchCategoryType,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      failureReason: failureReason == freezed
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as FailureReason?,
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchResultPageState extends _SearchResultPageState {
  _$_SearchResultPageState(
      {this.type = SearchCategoryType.repository,
      this.text = '',
      this.failureReason,
      this.repositories = const [],
      this.users = const [],
      this.isLoading = false})
      : super._();

  @JsonKey(defaultValue: SearchCategoryType.repository)
  @override
  final SearchCategoryType type;
  @JsonKey(defaultValue: '')
  @override
  final String text;
  @override
  final FailureReason? failureReason;
  @JsonKey(defaultValue: const [])
  @override
  final List<Repo> repositories;
  @JsonKey(defaultValue: const [])
  @override
  final List<Owner> users;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SearchResultPageState(type: $type, text: $text, failureReason: $failureReason, repositories: $repositories, users: $users, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultPageState &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.failureReason, failureReason) ||
                const DeepCollectionEquality()
                    .equals(other.failureReason, failureReason)) &&
            (identical(other.repositories, repositories) ||
                const DeepCollectionEquality()
                    .equals(other.repositories, repositories)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(failureReason) ^
      const DeepCollectionEquality().hash(repositories) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$SearchResultPageStateCopyWith<_SearchResultPageState> get copyWith =>
      __$SearchResultPageStateCopyWithImpl<_SearchResultPageState>(
          this, _$identity);
}

abstract class _SearchResultPageState extends SearchResultPageState {
  factory _SearchResultPageState(
      {SearchCategoryType type,
      String text,
      FailureReason? failureReason,
      List<Repo> repositories,
      List<Owner> users,
      bool isLoading}) = _$_SearchResultPageState;
  _SearchResultPageState._() : super._();

  @override
  SearchCategoryType get type => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  FailureReason? get failureReason => throw _privateConstructorUsedError;
  @override
  List<Repo> get repositories => throw _privateConstructorUsedError;
  @override
  List<Owner> get users => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchResultPageStateCopyWith<_SearchResultPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
