// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpOptions {
  String get path => throw _privateConstructorUsedError;
  HttpMethod get method => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get query => throw _privateConstructorUsedError;
  Duration? get timeout => throw _privateConstructorUsedError;
  String? get apiVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpOptionsCopyWith<HttpOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpOptionsCopyWith<$Res> {
  factory $HttpOptionsCopyWith(
          HttpOptions value, $Res Function(HttpOptions) then) =
      _$HttpOptionsCopyWithImpl<$Res, HttpOptions>;
  @useResult
  $Res call(
      {String path,
      HttpMethod method,
      String? url,
      Map<String, dynamic>? data,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Duration? timeout,
      String? apiVersion});
}

/// @nodoc
class _$HttpOptionsCopyWithImpl<$Res, $Val extends HttpOptions>
    implements $HttpOptionsCopyWith<$Res> {
  _$HttpOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? method = null,
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
    Object? query = freezed,
    Object? timeout = freezed,
    Object? apiVersion = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeout: freezed == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      apiVersion: freezed == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HttpOptionsCopyWith<$Res>
    implements $HttpOptionsCopyWith<$Res> {
  factory _$$_HttpOptionsCopyWith(
          _$_HttpOptions value, $Res Function(_$_HttpOptions) then) =
      __$$_HttpOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      HttpMethod method,
      String? url,
      Map<String, dynamic>? data,
      Map<String, String>? headers,
      Map<String, dynamic>? query,
      Duration? timeout,
      String? apiVersion});
}

/// @nodoc
class __$$_HttpOptionsCopyWithImpl<$Res>
    extends _$HttpOptionsCopyWithImpl<$Res, _$_HttpOptions>
    implements _$$_HttpOptionsCopyWith<$Res> {
  __$$_HttpOptionsCopyWithImpl(
      _$_HttpOptions _value, $Res Function(_$_HttpOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? method = null,
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
    Object? query = freezed,
    Object? timeout = freezed,
    Object? apiVersion = freezed,
  }) {
    return _then(_$_HttpOptions(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as HttpMethod,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      query: freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeout: freezed == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as Duration?,
      apiVersion: freezed == apiVersion
          ? _value.apiVersion
          : apiVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HttpOptions implements _HttpOptions {
  const _$_HttpOptions(
      {required this.path,
      required this.method,
      this.url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers,
      final Map<String, dynamic>? query,
      this.timeout,
      this.apiVersion})
      : _data = data,
        _headers = headers,
        _query = query;

  @override
  final String path;
  @override
  final HttpMethod method;
  @override
  final String? url;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _query;
  @override
  Map<String, dynamic>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableMapView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Duration? timeout;
  @override
  final String? apiVersion;

  @override
  String toString() {
    return 'HttpOptions(path: $path, method: $method, url: $url, data: $data, headers: $headers, query: $query, timeout: $timeout, apiVersion: $apiVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpOptions &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._query, _query) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.apiVersion, apiVersion) ||
                other.apiVersion == apiVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      method,
      url,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_query),
      timeout,
      apiVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpOptionsCopyWith<_$_HttpOptions> get copyWith =>
      __$$_HttpOptionsCopyWithImpl<_$_HttpOptions>(this, _$identity);
}

abstract class _HttpOptions implements HttpOptions {
  const factory _HttpOptions(
      {required final String path,
      required final HttpMethod method,
      final String? url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers,
      final Map<String, dynamic>? query,
      final Duration? timeout,
      final String? apiVersion}) = _$_HttpOptions;

  @override
  String get path;
  @override
  HttpMethod get method;
  @override
  String? get url;
  @override
  Map<String, dynamic>? get data;
  @override
  Map<String, String>? get headers;
  @override
  Map<String, dynamic>? get query;
  @override
  Duration? get timeout;
  @override
  String? get apiVersion;
  @override
  @JsonKey(ignore: true)
  _$$_HttpOptionsCopyWith<_$_HttpOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
