// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_card.g.dart';
part 'product_card.freezed.dart';

@freezed
class ProductCard with _$ProductCard{
  const factory ProductCard({
    required int id,
    String? picture,
    required String price,
    @JsonKey(name: "old_price")
    String? oldPrice,
    required String brand,
    String? article,
    String? name,
    String? description,
    bool? available,
    num? discount,
}) = _ProductCard;

  factory ProductCard.fromJson(Map<String, dynamic> json) =>
      _$ProductCardFromJson(json);
}