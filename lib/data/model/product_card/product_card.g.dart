// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCard _$$_ProductCardFromJson(Map<String, dynamic> json) =>
    _$_ProductCard(
      id: json['id'] as int,
      picture: json['picture'] as String?,
      price: json['price'] as String,
      oldPrice: json['old_price'] as String?,
      brand: json['brand'] as String,
      article: json['article'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      available: json['available'] as bool?,
      discount: json['discount'] as num?,
    );

Map<String, dynamic> _$$_ProductCardToJson(_$_ProductCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'brand': instance.brand,
      'article': instance.article,
      'name': instance.name,
      'description': instance.description,
      'available': instance.available,
      'discount': instance.discount,
    };
