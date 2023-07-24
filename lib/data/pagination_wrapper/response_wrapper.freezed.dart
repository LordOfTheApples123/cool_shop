// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationWrapper<T> _$PaginationWrapperFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationWrapper<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationWrapper<T> {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;
  List<T> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationWrapperCopyWith<T, PaginationWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationWrapperCopyWith<T, $Res> {
  factory $PaginationWrapperCopyWith(PaginationWrapper<T> value,
          $Res Function(PaginationWrapper<T>) then) =
      _$PaginationWrapperCopyWithImpl<T, $Res, PaginationWrapper<T>>;
  @useResult
  $Res call({int count, String? next, String? prev, List<T> results});
}

/// @nodoc
class _$PaginationWrapperCopyWithImpl<T, $Res,
        $Val extends PaginationWrapper<T>>
    implements $PaginationWrapperCopyWith<T, $Res> {
  _$PaginationWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? prev = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationWrapperCopyWith<T, $Res>
    implements $PaginationWrapperCopyWith<T, $Res> {
  factory _$$_PaginationWrapperCopyWith(_$_PaginationWrapper<T> value,
          $Res Function(_$_PaginationWrapper<T>) then) =
      __$$_PaginationWrapperCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int count, String? next, String? prev, List<T> results});
}

/// @nodoc
class __$$_PaginationWrapperCopyWithImpl<T, $Res>
    extends _$PaginationWrapperCopyWithImpl<T, $Res, _$_PaginationWrapper<T>>
    implements _$$_PaginationWrapperCopyWith<T, $Res> {
  __$$_PaginationWrapperCopyWithImpl(_$_PaginationWrapper<T> _value,
      $Res Function(_$_PaginationWrapper<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? prev = freezed,
    Object? results = null,
  }) {
    return _then(_$_PaginationWrapper<T>(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PaginationWrapper<T> implements _PaginationWrapper<T> {
  const _$_PaginationWrapper(
      {required this.count,
      this.next,
      this.prev,
      required final List<T> results})
      : _results = results;

  factory _$_PaginationWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginationWrapperFromJson(json, fromJsonT);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? prev;
  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaginationWrapper<$T>(count: $count, next: $next, prev: $prev, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationWrapper<T> &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, prev,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationWrapperCopyWith<T, _$_PaginationWrapper<T>> get copyWith =>
      __$$_PaginationWrapperCopyWithImpl<T, _$_PaginationWrapper<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PaginationWrapperToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationWrapper<T> implements PaginationWrapper<T> {
  const factory _PaginationWrapper(
      {required final int count,
      final String? next,
      final String? prev,
      required final List<T> results}) = _$_PaginationWrapper<T>;

  factory _PaginationWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginationWrapper<T>.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get prev;
  @override
  List<T> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationWrapperCopyWith<T, _$_PaginationWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
