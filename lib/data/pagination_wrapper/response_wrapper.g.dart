// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationWrapper<T> _$$_PaginationWrapperFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PaginationWrapper<T>(
      count: json['count'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$_PaginationWrapperToJson<T>(
  _$_PaginationWrapper<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'prev': instance.prev,
      'results': instance.results.map(toJsonT).toList(),
    };
