// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_user.g.dart';
part 'request_user.freezed.dart';

@Freezed(
  toJson: true,
  fromJson: false
)
class RequestUser with _$RequestUser{
  const factory RequestUser({
    @JsonKey(name: "first_name")
    required String? firstName,
    @JsonKey(name: "second_name")
    required String secondName,
    required String email,
    required String gender,
    String? birthDay,
    required String role,
}) = _RequestUser;
}