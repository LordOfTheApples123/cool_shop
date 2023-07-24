//НЕПРАВИЛЬНЫЙ СВАГГЕР
//не написано, что в каталоге есть wrapper для пагинации >:(



import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_wrapper.g.dart';
part 'response_wrapper.freezed.dart';


@Freezed(
  genericArgumentFactories: true
)
class PaginationWrapper<T> with _$PaginationWrapper{
  const factory PaginationWrapper({
    required int count,

    String? next,
    String? prev,
    required List<T> results,
}) = _PaginationWrapper;

  factory PaginationWrapper.fromJson(Map<String, dynamic> json, T Function(Object?) fromJson) => _$PaginationWrapperFromJson(json, fromJson);

}