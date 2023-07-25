import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery.freezed.dart';
part 'delivery.g.dart';

@freezed
class Delivery with _$Delivery {
  const factory Delivery({
    required String id,
    required String title,
    required String description,
    required String type,
    required String icon
}) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}
