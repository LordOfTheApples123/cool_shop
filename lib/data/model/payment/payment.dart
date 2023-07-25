import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment.g.dart';

part 'payment.freezed.dart';

@freezed
class Payment with _$Payment {

  const factory Payment({
    required String id,
    required String title,
    required String type,
    String? description,
    String? picture,
}) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
