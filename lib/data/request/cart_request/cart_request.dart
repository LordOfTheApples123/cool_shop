// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_request.g.dart';

part 'cart_request.freezed.dart';

@Freezed(
  toJson: true,
  fromJson: false,
)
class CartRequest with _$CartRequest {
  const factory CartRequest({
    @JsonKey(name: "product_id")
    required int productId,
    int? count,
  }) = _CartRequest;
}
