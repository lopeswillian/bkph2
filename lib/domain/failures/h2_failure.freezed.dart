// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'h2_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$H2Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $H2FailureCopyWith<$Res> {
  factory $H2FailureCopyWith(H2Failure value, $Res Function(H2Failure) then) =
      _$H2FailureCopyWithImpl<$Res, H2Failure>;
}

/// @nodoc
class _$H2FailureCopyWithImpl<$Res, $Val extends H2Failure>
    implements $H2FailureCopyWith<$Res> {
  _$H2FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerCopyWith<$Res> {
  factory _$$_ServerCopyWith(_$_Server value, $Res Function(_$_Server) then) =
      __$$_ServerCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServerCopyWithImpl<$Res>
    extends _$H2FailureCopyWithImpl<$Res, _$_Server>
    implements _$$_ServerCopyWith<$Res> {
  __$$_ServerCopyWithImpl(_$_Server _value, $Res Function(_$_Server) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Server(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Server extends _Server {
  const _$_Server({this.message = ''}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'H2Failure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Server &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      __$$_ServerCopyWithImpl<_$_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server extends H2Failure {
  const factory _Server({final String message}) = _$_Server;
  const _Server._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidParamsCopyWith<$Res> {
  factory _$$_InvalidParamsCopyWith(
          _$_InvalidParams value, $Res Function(_$_InvalidParams) then) =
      __$$_InvalidParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_InvalidParamsCopyWithImpl<$Res>
    extends _$H2FailureCopyWithImpl<$Res, _$_InvalidParams>
    implements _$$_InvalidParamsCopyWith<$Res> {
  __$$_InvalidParamsCopyWithImpl(
      _$_InvalidParams _value, $Res Function(_$_InvalidParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_InvalidParams(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidParams extends _InvalidParams {
  const _$_InvalidParams({this.message = ''}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'H2Failure.invalidParams(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidParams &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidParamsCopyWith<_$_InvalidParams> get copyWith =>
      __$$_InvalidParamsCopyWithImpl<_$_InvalidParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) {
    return invalidParams(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) {
    return invalidParams?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidParams != null) {
      return invalidParams(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return invalidParams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return invalidParams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidParams != null) {
      return invalidParams(this);
    }
    return orElse();
  }
}

abstract class _InvalidParams extends H2Failure {
  const factory _InvalidParams({final String message}) = _$_InvalidParams;
  const _InvalidParams._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_InvalidParamsCopyWith<_$_InvalidParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnauthorizedCopyWith<$Res> {
  factory _$$_UnauthorizedCopyWith(
          _$_Unauthorized value, $Res Function(_$_Unauthorized) then) =
      __$$_UnauthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnauthorizedCopyWithImpl<$Res>
    extends _$H2FailureCopyWithImpl<$Res, _$_Unauthorized>
    implements _$$_UnauthorizedCopyWith<$Res> {
  __$$_UnauthorizedCopyWithImpl(
      _$_Unauthorized _value, $Res Function(_$_Unauthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Unauthorized(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unauthorized extends _Unauthorized {
  const _$_Unauthorized({this.message = ''}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'H2Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unauthorized &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthorizedCopyWith<_$_Unauthorized> get copyWith =>
      __$$_UnauthorizedCopyWithImpl<_$_Unauthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized extends H2Failure {
  const factory _Unauthorized({final String message}) = _$_Unauthorized;
  const _Unauthorized._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_UnauthorizedCopyWith<_$_Unauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidDataCopyWith<$Res> {
  factory _$$_InvalidDataCopyWith(
          _$_InvalidData value, $Res Function(_$_InvalidData) then) =
      __$$_InvalidDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_InvalidDataCopyWithImpl<$Res>
    extends _$H2FailureCopyWithImpl<$Res, _$_InvalidData>
    implements _$$_InvalidDataCopyWith<$Res> {
  __$$_InvalidDataCopyWithImpl(
      _$_InvalidData _value, $Res Function(_$_InvalidData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_InvalidData(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidData extends _InvalidData {
  const _$_InvalidData({this.message = ''}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'H2Failure.invalidData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidData &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidDataCopyWith<_$_InvalidData> get copyWith =>
      __$$_InvalidDataCopyWithImpl<_$_InvalidData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) {
    return invalidData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) {
    return invalidData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class _InvalidData extends H2Failure {
  const factory _InvalidData({final String message}) = _$_InvalidData;
  const _InvalidData._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_InvalidDataCopyWith<_$_InvalidData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnprocessableEntityCopyWith<$Res> {
  factory _$$_UnprocessableEntityCopyWith(_$_UnprocessableEntity value,
          $Res Function(_$_UnprocessableEntity) then) =
      __$$_UnprocessableEntityCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnprocessableEntityCopyWithImpl<$Res>
    extends _$H2FailureCopyWithImpl<$Res, _$_UnprocessableEntity>
    implements _$$_UnprocessableEntityCopyWith<$Res> {
  __$$_UnprocessableEntityCopyWithImpl(_$_UnprocessableEntity _value,
      $Res Function(_$_UnprocessableEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnprocessableEntity(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnprocessableEntity extends _UnprocessableEntity {
  const _$_UnprocessableEntity({this.message = ''}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'H2Failure.unprocessableEntity(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnprocessableEntity &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      __$$_UnprocessableEntityCopyWithImpl<_$_UnprocessableEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) {
    return unprocessableEntity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) {
    return unprocessableEntity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unprocessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unprocessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(this);
    }
    return orElse();
  }
}

abstract class _UnprocessableEntity extends H2Failure {
  const factory _UnprocessableEntity({final String message}) =
      _$_UnprocessableEntity;
  const _UnprocessableEntity._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeoutCopyWith<$Res> {
  factory _$$_TimeoutCopyWith(
          _$_Timeout value, $Res Function(_$_Timeout) then) =
      __$$_TimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimeoutCopyWithImpl<$Res>
    extends _$H2FailureCopyWithImpl<$Res, _$_Timeout>
    implements _$$_TimeoutCopyWith<$Res> {
  __$$_TimeoutCopyWithImpl(_$_Timeout _value, $Res Function(_$_Timeout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Timeout extends _Timeout {
  const _$_Timeout() : super._();

  @override
  String toString() {
    return 'H2Failure.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Timeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout extends H2Failure {
  const factory _Timeout() = _$_Timeout;
  const _Timeout._() : super._();
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$H2FailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unexpected extends _Unexpected {
  const _$_Unexpected() : super._();

  @override
  String toString() {
    return 'H2Failure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) invalidParams,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) invalidData,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() timeout,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? invalidParams,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? invalidData,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? timeout,
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? invalidParams,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? invalidData,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? timeout,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidParams value) invalidParams,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_InvalidParams value)? invalidParams,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_InvalidParams value)? invalidParams,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected extends H2Failure {
  const factory _Unexpected() = _$_Unexpected;
  const _Unexpected._() : super._();
}
