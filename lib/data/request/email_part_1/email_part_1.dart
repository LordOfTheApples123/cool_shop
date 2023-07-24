import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_part_1.g.dart';
part 'email_part_1.freezed.dart';

@freezed
class EmailPart1 with _$EmailPart1{
  const factory EmailPart1({
    required String email,
    required int digits,
}) = _EmailPart1;

  factory EmailPart1.fromJson(Map<String, dynamic> json) =>
      _$EmailPart1FromJson(json);
}