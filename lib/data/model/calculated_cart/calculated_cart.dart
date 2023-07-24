import 'package:cool_shop/data/model/cart_product/cart_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'calculated_cart.g.dart';
part 'calculated_cart.freezed.dart';

@Freezed(
  fromJson: true,
  toJson: false,
)
class CalculatedCart with _$CalculatedCart {
  const factory CalculatedCart({
    required String price,
    // ignore: invalid_annotation_target
    @JsonKey(name: "old_price")
    String? oldPrice,
    required int count,
    required List<CartProduct> products,
    bool? applied
}) = _CalculatedCart;

  factory CalculatedCart.fromJson(Map<String, dynamic> json) =>
      _$CalculatedCartFromJson(json);
}
