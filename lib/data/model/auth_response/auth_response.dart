// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.g.dart';
part 'auth_response.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse{
  const factory AuthResponse({
    @JsonKey(name: "access_token")
    required String accessToken,
    @JsonKey(name: "refresh_token")
    required String refreshToken,
}) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}