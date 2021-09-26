// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureReasonTearOff {
  const _$FailureReasonTearOff();

  NotOk notOk({required Response response}) {
    return NotOk(
      response: response,
    );
  }

  Unexpected unexpected({Exception? exception}) {
    return Unexpected(
      exception: exception,
    );
  }

  InvalidJsonFormat invalidJsonFormat(
      {required CheckedFromJsonException exception}) {
    return InvalidJsonFormat(
      exception: exception,
    );
  }
}

/// @nodoc
const $FailureReason = _$FailureReasonTearOff();

/// @nodoc
mixin _$FailureReason {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Response response) notOk,
    required TResult Function(Exception? exception) unexpected,
    required TResult Function(CheckedFromJsonException exception)
        invalidJsonFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotOk value) notOk,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InvalidJsonFormat value) invalidJsonFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureReasonCopyWith<$Res> {
  factory $FailureReasonCopyWith(
          FailureReason value, $Res Function(FailureReason) then) =
      _$FailureReasonCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureReasonCopyWithImpl<$Res>
    implements $FailureReasonCopyWith<$Res> {
  _$FailureReasonCopyWithImpl(this._value, this._then);

  final FailureReason _value;
  // ignore: unused_field
  final $Res Function(FailureReason) _then;
}

/// @nodoc
abstract class $NotOkCopyWith<$Res> {
  factory $NotOkCopyWith(NotOk value, $Res Function(NotOk) then) =
      _$NotOkCopyWithImpl<$Res>;
  $Res call({Response response});
}

/// @nodoc
class _$NotOkCopyWithImpl<$Res> extends _$FailureReasonCopyWithImpl<$Res>
    implements $NotOkCopyWith<$Res> {
  _$NotOkCopyWithImpl(NotOk _value, $Res Function(NotOk) _then)
      : super(_value, (v) => _then(v as NotOk));

  @override
  NotOk get _value => super._value as NotOk;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(NotOk(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ));
  }
}

/// @nodoc

class _$NotOk implements NotOk {
  const _$NotOk({required this.response});

  @override
  final Response response;

  @override
  String toString() {
    return 'FailureReason.notOk(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotOk &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  $NotOkCopyWith<NotOk> get copyWith =>
      _$NotOkCopyWithImpl<NotOk>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Response response) notOk,
    required TResult Function(Exception? exception) unexpected,
    required TResult Function(CheckedFromJsonException exception)
        invalidJsonFormat,
  }) {
    return notOk(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
  }) {
    return notOk?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
    required TResult orElse(),
  }) {
    if (notOk != null) {
      return notOk(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotOk value) notOk,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InvalidJsonFormat value) invalidJsonFormat,
  }) {
    return notOk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
  }) {
    return notOk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
    required TResult orElse(),
  }) {
    if (notOk != null) {
      return notOk(this);
    }
    return orElse();
  }
}

abstract class NotOk implements FailureReason {
  const factory NotOk({required Response response}) = _$NotOk;

  Response get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotOkCopyWith<NotOk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
  $Res call({Exception? exception});
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$FailureReasonCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(Unexpected(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected({this.exception});

  @override
  final Exception? exception;

  @override
  String toString() {
    return 'FailureReason.unexpected(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Unexpected &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $UnexpectedCopyWith<Unexpected> get copyWith =>
      _$UnexpectedCopyWithImpl<Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Response response) notOk,
    required TResult Function(Exception? exception) unexpected,
    required TResult Function(CheckedFromJsonException exception)
        invalidJsonFormat,
  }) {
    return unexpected(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
  }) {
    return unexpected?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotOk value) notOk,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InvalidJsonFormat value) invalidJsonFormat,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements FailureReason {
  const factory Unexpected({Exception? exception}) = _$Unexpected;

  Exception? get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnexpectedCopyWith<Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidJsonFormatCopyWith<$Res> {
  factory $InvalidJsonFormatCopyWith(
          InvalidJsonFormat value, $Res Function(InvalidJsonFormat) then) =
      _$InvalidJsonFormatCopyWithImpl<$Res>;
  $Res call({CheckedFromJsonException exception});
}

/// @nodoc
class _$InvalidJsonFormatCopyWithImpl<$Res>
    extends _$FailureReasonCopyWithImpl<$Res>
    implements $InvalidJsonFormatCopyWith<$Res> {
  _$InvalidJsonFormatCopyWithImpl(
      InvalidJsonFormat _value, $Res Function(InvalidJsonFormat) _then)
      : super(_value, (v) => _then(v as InvalidJsonFormat));

  @override
  InvalidJsonFormat get _value => super._value as InvalidJsonFormat;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(InvalidJsonFormat(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as CheckedFromJsonException,
    ));
  }
}

/// @nodoc

class _$InvalidJsonFormat implements InvalidJsonFormat {
  const _$InvalidJsonFormat({required this.exception});

  @override
  final CheckedFromJsonException exception;

  @override
  String toString() {
    return 'FailureReason.invalidJsonFormat(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidJsonFormat &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $InvalidJsonFormatCopyWith<InvalidJsonFormat> get copyWith =>
      _$InvalidJsonFormatCopyWithImpl<InvalidJsonFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Response response) notOk,
    required TResult Function(Exception? exception) unexpected,
    required TResult Function(CheckedFromJsonException exception)
        invalidJsonFormat,
  }) {
    return invalidJsonFormat(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
  }) {
    return invalidJsonFormat?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Response response)? notOk,
    TResult Function(Exception? exception)? unexpected,
    TResult Function(CheckedFromJsonException exception)? invalidJsonFormat,
    required TResult orElse(),
  }) {
    if (invalidJsonFormat != null) {
      return invalidJsonFormat(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotOk value) notOk,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(InvalidJsonFormat value) invalidJsonFormat,
  }) {
    return invalidJsonFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
  }) {
    return invalidJsonFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotOk value)? notOk,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(InvalidJsonFormat value)? invalidJsonFormat,
    required TResult orElse(),
  }) {
    if (invalidJsonFormat != null) {
      return invalidJsonFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidJsonFormat implements FailureReason {
  const factory InvalidJsonFormat(
      {required CheckedFromJsonException exception}) = _$InvalidJsonFormat;

  CheckedFromJsonException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidJsonFormatCopyWith<InvalidJsonFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
