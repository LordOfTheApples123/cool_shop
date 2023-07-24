// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'jwt_refresh.g.dart';
part 'jwt_refresh.freezed.dart';

@Freezed(
  toJson: true
)
class JwtRefresh with _$JwtRefresh{
  const factory JwtRefresh({
    @JsonKey(name: "refresh_token")
    required String refreshToken,
}) = _JwtRefresh;

}