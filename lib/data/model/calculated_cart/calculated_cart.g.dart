// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalculatedCart _$$_CalculatedCartFromJson(Map<String, dynamic> json) =>
    _$_CalculatedCart(
      price: json['price'] as String,
      oldPrice: json['old_price'] as String?,
      count: json['count'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      applied: json['applied'] as bool?,
    );
