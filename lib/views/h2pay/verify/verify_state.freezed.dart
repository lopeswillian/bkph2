// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyState {
  bool get loading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  DocumentSideType? get typeDocument => throw _privateConstructorUsedError;
  List<Job> get listJobs => throw _privateConstructorUsedError;
  List<MonthlyIncome> get listMonthlyIncome =>
      throw _privateConstructorUsedError;
  TermsConditions? get termsCondition => throw _privateConstructorUsedError;
  Job? get selectedJob => throw _privateConstructorUsedError;
  MonthlyIncome? get selectedMonthlyIncome =>
      throw _privateConstructorUsedError;
  String get cafId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyStateCopyWith<VerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyStateCopyWith<$Res> {
  factory $VerifyStateCopyWith(
          VerifyState value, $Res Function(VerifyState) then) =
      _$VerifyStateCopyWithImpl<$Res, VerifyState>;
  @useResult
  $Res call(
      {bool loading,
      String error,
      String phone,
      DocumentSideType? typeDocument,
      List<Job> listJobs,
      List<MonthlyIncome> listMonthlyIncome,
      TermsConditions? termsCondition,
      Job? selectedJob,
      MonthlyIncome? selectedMonthlyIncome,
      String cafId});

  $TermsConditionsCopyWith<$Res>? get termsCondition;
  $JobCopyWith<$Res>? get selectedJob;
  $MonthlyIncomeCopyWith<$Res>? get selectedMonthlyIncome;
}

/// @nodoc
class _$VerifyStateCopyWithImpl<$Res, $Val extends VerifyState>
    implements $VerifyStateCopyWith<$Res> {
  _$VerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? phone = null,
    Object? typeDocument = freezed,
    Object? listJobs = null,
    Object? listMonthlyIncome = null,
    Object? termsCondition = freezed,
    Object? selectedJob = freezed,
    Object? selectedMonthlyIncome = freezed,
    Object? cafId = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      typeDocument: freezed == typeDocument
          ? _value.typeDocument
          : typeDocument // ignore: cast_nullable_to_non_nullable
              as DocumentSideType?,
      listJobs: null == listJobs
          ? _value.listJobs
          : listJobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
      listMonthlyIncome: null == listMonthlyIncome
          ? _value.listMonthlyIncome
          : listMonthlyIncome // ignore: cast_nullable_to_non_nullable
              as List<MonthlyIncome>,
      termsCondition: freezed == termsCondition
          ? _value.termsCondition
          : termsCondition // ignore: cast_nullable_to_non_nullable
              as TermsConditions?,
      selectedJob: freezed == selectedJob
          ? _value.selectedJob
          : selectedJob // ignore: cast_nullable_to_non_nullable
              as Job?,
      selectedMonthlyIncome: freezed == selectedMonthlyIncome
          ? _value.selectedMonthlyIncome
          : selectedMonthlyIncome // ignore: cast_nullable_to_non_nullable
              as MonthlyIncome?,
      cafId: null == cafId
          ? _value.cafId
          : cafId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TermsConditionsCopyWith<$Res>? get termsCondition {
    if (_value.termsCondition == null) {
      return null;
    }

    return $TermsConditionsCopyWith<$Res>(_value.termsCondition!, (value) {
      return _then(_value.copyWith(termsCondition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $JobCopyWith<$Res>? get selectedJob {
    if (_value.selectedJob == null) {
      return null;
    }

    return $JobCopyWith<$Res>(_value.selectedJob!, (value) {
      return _then(_value.copyWith(selectedJob: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MonthlyIncomeCopyWith<$Res>? get selectedMonthlyIncome {
    if (_value.selectedMonthlyIncome == null) {
      return null;
    }

    return $MonthlyIncomeCopyWith<$Res>(_value.selectedMonthlyIncome!, (value) {
      return _then(_value.copyWith(selectedMonthlyIncome: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VerifyStateCopyWith<$Res>
    implements $VerifyStateCopyWith<$Res> {
  factory _$$_VerifyStateCopyWith(
          _$_VerifyState value, $Res Function(_$_VerifyState) then) =
      __$$_VerifyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String error,
      String phone,
      DocumentSideType? typeDocument,
      List<Job> listJobs,
      List<MonthlyIncome> listMonthlyIncome,
      TermsConditions? termsCondition,
      Job? selectedJob,
      MonthlyIncome? selectedMonthlyIncome,
      String cafId});

  @override
  $TermsConditionsCopyWith<$Res>? get termsCondition;
  @override
  $JobCopyWith<$Res>? get selectedJob;
  @override
  $MonthlyIncomeCopyWith<$Res>? get selectedMonthlyIncome;
}

/// @nodoc
class __$$_VerifyStateCopyWithImpl<$Res>
    extends _$VerifyStateCopyWithImpl<$Res, _$_VerifyState>
    implements _$$_VerifyStateCopyWith<$Res> {
  __$$_VerifyStateCopyWithImpl(
      _$_VerifyState _value, $Res Function(_$_VerifyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? phone = null,
    Object? typeDocument = freezed,
    Object? listJobs = null,
    Object? listMonthlyIncome = null,
    Object? termsCondition = freezed,
    Object? selectedJob = freezed,
    Object? selectedMonthlyIncome = freezed,
    Object? cafId = null,
  }) {
    return _then(_$_VerifyState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      typeDocument: freezed == typeDocument
          ? _value.typeDocument
          : typeDocument // ignore: cast_nullable_to_non_nullable
              as DocumentSideType?,
      listJobs: null == listJobs
          ? _value._listJobs
          : listJobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
      listMonthlyIncome: null == listMonthlyIncome
          ? _value._listMonthlyIncome
          : listMonthlyIncome // ignore: cast_nullable_to_non_nullable
              as List<MonthlyIncome>,
      termsCondition: freezed == termsCondition
          ? _value.termsCondition
          : termsCondition // ignore: cast_nullable_to_non_nullable
              as TermsConditions?,
      selectedJob: freezed == selectedJob
          ? _value.selectedJob
          : selectedJob // ignore: cast_nullable_to_non_nullable
              as Job?,
      selectedMonthlyIncome: freezed == selectedMonthlyIncome
          ? _value.selectedMonthlyIncome
          : selectedMonthlyIncome // ignore: cast_nullable_to_non_nullable
              as MonthlyIncome?,
      cafId: null == cafId
          ? _value.cafId
          : cafId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyState implements _VerifyState {
  const _$_VerifyState(
      {this.loading = false,
      this.error = '',
      this.phone = '',
      this.typeDocument,
      final List<Job> listJobs = const [],
      final List<MonthlyIncome> listMonthlyIncome = const [],
      this.termsCondition,
      this.selectedJob,
      this.selectedMonthlyIncome,
      this.cafId = ''})
      : _listJobs = listJobs,
        _listMonthlyIncome = listMonthlyIncome;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String phone;
  @override
  final DocumentSideType? typeDocument;
  final List<Job> _listJobs;
  @override
  @JsonKey()
  List<Job> get listJobs {
    if (_listJobs is EqualUnmodifiableListView) return _listJobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listJobs);
  }

  final List<MonthlyIncome> _listMonthlyIncome;
  @override
  @JsonKey()
  List<MonthlyIncome> get listMonthlyIncome {
    if (_listMonthlyIncome is EqualUnmodifiableListView)
      return _listMonthlyIncome;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMonthlyIncome);
  }

  @override
  final TermsConditions? termsCondition;
  @override
  final Job? selectedJob;
  @override
  final MonthlyIncome? selectedMonthlyIncome;
  @override
  @JsonKey()
  final String cafId;

  @override
  String toString() {
    return 'VerifyState(loading: $loading, error: $error, phone: $phone, typeDocument: $typeDocument, listJobs: $listJobs, listMonthlyIncome: $listMonthlyIncome, termsCondition: $termsCondition, selectedJob: $selectedJob, selectedMonthlyIncome: $selectedMonthlyIncome, cafId: $cafId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.typeDocument, typeDocument) ||
                other.typeDocument == typeDocument) &&
            const DeepCollectionEquality().equals(other._listJobs, _listJobs) &&
            const DeepCollectionEquality()
                .equals(other._listMonthlyIncome, _listMonthlyIncome) &&
            (identical(other.termsCondition, termsCondition) ||
                other.termsCondition == termsCondition) &&
            (identical(other.selectedJob, selectedJob) ||
                other.selectedJob == selectedJob) &&
            (identical(other.selectedMonthlyIncome, selectedMonthlyIncome) ||
                other.selectedMonthlyIncome == selectedMonthlyIncome) &&
            (identical(other.cafId, cafId) || other.cafId == cafId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      phone,
      typeDocument,
      const DeepCollectionEquality().hash(_listJobs),
      const DeepCollectionEquality().hash(_listMonthlyIncome),
      termsCondition,
      selectedJob,
      selectedMonthlyIncome,
      cafId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyStateCopyWith<_$_VerifyState> get copyWith =>
      __$$_VerifyStateCopyWithImpl<_$_VerifyState>(this, _$identity);
}

abstract class _VerifyState implements VerifyState {
  const factory _VerifyState(
      {final bool loading,
      final String error,
      final String phone,
      final DocumentSideType? typeDocument,
      final List<Job> listJobs,
      final List<MonthlyIncome> listMonthlyIncome,
      final TermsConditions? termsCondition,
      final Job? selectedJob,
      final MonthlyIncome? selectedMonthlyIncome,
      final String cafId}) = _$_VerifyState;

  @override
  bool get loading;
  @override
  String get error;
  @override
  String get phone;
  @override
  DocumentSideType? get typeDocument;
  @override
  List<Job> get listJobs;
  @override
  List<MonthlyIncome> get listMonthlyIncome;
  @override
  TermsConditions? get termsCondition;
  @override
  Job? get selectedJob;
  @override
  MonthlyIncome? get selectedMonthlyIncome;
  @override
  String get cafId;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyStateCopyWith<_$_VerifyState> get copyWith =>
      throw _privateConstructorUsedError;
}
