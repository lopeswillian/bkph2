// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_multipart_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpMultipartOptions {
  List<HttpMultipartFile> get files => throw _privateConstructorUsedError;
  Map<String, String>? get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpMultipartOptionsCopyWith<HttpMultipartOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpMultipartOptionsCopyWith<$Res> {
  factory $HttpMultipartOptionsCopyWith(HttpMultipartOptions value,
          $Res Function(HttpMultipartOptions) then) =
      _$HttpMultipartOptionsCopyWithImpl<$Res, HttpMultipartOptions>;
  @useResult
  $Res call({List<HttpMultipartFile> files, Map<String, String>? fields});
}

/// @nodoc
class _$HttpMultipartOptionsCopyWithImpl<$Res,
        $Val extends HttpMultipartOptions>
    implements $HttpMultipartOptionsCopyWith<$Res> {
  _$HttpMultipartOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<HttpMultipartFile>,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HttpMultipartOptionsCopyWith<$Res>
    implements $HttpMultipartOptionsCopyWith<$Res> {
  factory _$$_HttpMultipartOptionsCopyWith(_$_HttpMultipartOptions value,
          $Res Function(_$_HttpMultipartOptions) then) =
      __$$_HttpMultipartOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HttpMultipartFile> files, Map<String, String>? fields});
}

/// @nodoc
class __$$_HttpMultipartOptionsCopyWithImpl<$Res>
    extends _$HttpMultipartOptionsCopyWithImpl<$Res, _$_HttpMultipartOptions>
    implements _$$_HttpMultipartOptionsCopyWith<$Res> {
  __$$_HttpMultipartOptionsCopyWithImpl(_$_HttpMultipartOptions _value,
      $Res Function(_$_HttpMultipartOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? fields = freezed,
  }) {
    return _then(_$_HttpMultipartOptions(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<HttpMultipartFile>,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$_HttpMultipartOptions implements _HttpMultipartOptions {
  const _$_HttpMultipartOptions(
      {required final List<HttpMultipartFile> files,
      final Map<String, String>? fields})
      : _files = files,
        _fields = fields;

  final List<HttpMultipartFile> _files;
  @override
  List<HttpMultipartFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  final Map<String, String>? _fields;
  @override
  Map<String, String>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HttpMultipartOptions(files: $files, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpMultipartOptions &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpMultipartOptionsCopyWith<_$_HttpMultipartOptions> get copyWith =>
      __$$_HttpMultipartOptionsCopyWithImpl<_$_HttpMultipartOptions>(
          this, _$identity);
}

abstract class _HttpMultipartOptions implements HttpMultipartOptions {
  const factory _HttpMultipartOptions(
      {required final List<HttpMultipartFile> files,
      final Map<String, String>? fields}) = _$_HttpMultipartOptions;

  @override
  List<HttpMultipartFile> get files;
  @override
  Map<String, String>? get fields;
  @override
  @JsonKey(ignore: true)
  _$$_HttpMultipartOptionsCopyWith<_$_HttpMultipartOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
