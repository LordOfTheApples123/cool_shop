// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_request.g.dart';

part 'order_request.freezed.dart';

@Freezed(toJson: true, fromJson: false)
class OrderRequest with _$OrderRequest {
  const factory OrderRequest({
    @JsonKey(name: "user_name") required String userName,
    @JsonKey(name: "user_phone") required String userPhone,
    @JsonKey(name: "user_email") required String userEmail,
    @JsonKey(name: "delivery_id") required String deliveryId,
    @JsonKey(name: "delivery_type") required String deliveryType,
    @JsonKey(name: "payment_id") required String paymentId,
    @JsonKey(name: "payment_type") required String paymentType,
    @JsonKey(name: "delivery_date", includeIfNull: false)
    required String deliveryDate,
  }) = _OrderRequest;
}

@Freezed(
  fromJson: false,
  toJson: true,
)
class ProductRequest with _$ProductRequest {
  const factory ProductRequest({
    @JsonKey(name: "product_id") required String productId,
    required int count,
  }) = _ProductRequest;
}
