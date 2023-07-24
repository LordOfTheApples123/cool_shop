import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_part_2.g.dart';
part 'email_part_2.freezed.dart';

@freezed
class EmailPart2 with _$EmailPart2{
  const factory EmailPart2({
    required String email,
    required String code,
  }) = _EmailPart2;

  factory EmailPart2.fromJson(Map<String, dynamic> json) =>
      _$EmailPart2FromJson(json);
}