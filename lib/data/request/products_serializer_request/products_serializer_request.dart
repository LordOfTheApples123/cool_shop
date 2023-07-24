// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_serializer_request.g.dart';

part 'products_serializer_request.freezed.dart';

@Freezed(
  toJson: true,
)
class ProductsSerializerRequest with _$ProductsSerializerRequest {
  const factory ProductsSerializerRequest(
      {@JsonKey(
        name: "city_fias",
        includeIfNull: false,
      )
      String? cityFias,
      @JsonKey(includeIfNull: false) String? brand,
      @JsonKey(
        name: "category_ids",
      )
      required List<int> categoryIds,
      @JsonKey(
        name: "product_ids",
      )
      required List<int> productIds,
      @JsonKey(
        name: "sort_by",
        includeIfNull: false,
      )
      String? sortBy}) = _ProductsSerializerRequest;
}
