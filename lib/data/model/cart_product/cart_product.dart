import 'package:cool_shop/data/model/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product.freezed.dart';
part 'cart_product.g.dart';

@Freezed(
  fromJson: true,
  toJson: false,
  equal: true,
)
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required int count,
    required Product product,
}) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}
