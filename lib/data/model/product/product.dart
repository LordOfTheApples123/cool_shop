// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.g.dart';

part 'product.freezed.dart';



@Freezed(
  fromJson: true,
  toJson: false,
  equal: true
)
class Product with _$Product {
  const factory Product({
    required int id,
    String? price,
    @JsonKey(name: "old_price") String? oldPrice,
    String? discount,
    String? name,
    String? article,
    String? picture,
    double? rating,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    required String brand,
    required List<Badge> badges,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>_$_Product(
    id: json['id'] as int,
    price: json['price'] as String?,
    oldPrice: json['old_price'] as String?,
    //Костылим, чтобы не делать 2 сущности с одним отличным полем
    discount: json['discount'].toString(),
    name: json['name'] as String?,
    article: json['article'] as String?,
    picture: json['picture'] as String?,
    rating: (json['rating'] as num?)?.toDouble(),
    reviewsCount: json['reviews_count'] as int?,
    brand: json['brand'] as String,
    badges: (json['badges'] as List<dynamic>)
        .map((e) => Badge.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

@Freezed(
  fromJson: true,
  toJson: false,
  equal: true,
)
class Badge with _$Badge {
  const factory Badge({
    required int id,
    @JsonKey(name: "text_color") String? textColor,
    String? bgColor,
    String? text,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}
