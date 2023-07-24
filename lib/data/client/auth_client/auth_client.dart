
import 'dart:io';

import 'package:cool_shop/data/model/auth_response/auth_response.dart';
import 'package:cool_shop/data/request/email_part_1/email_part_1.dart';
import 'package:cool_shop/data/request/email_part_2/email_part_2.dart';
import 'package:cool_shop/data/request/jwt_refresh/jwt_refresh.dart';
import 'package:cool_shop/data/request/request_user/request_user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST("/auth/email/part1")
  Future<void> emailPart1(
    @Body() EmailPart1 part1,
  );

  @POST("/auth/email/part2")
  Future<void> emailPart2(
    @Body() EmailPart2 part2,
  );

  @POST("/auth/register")
  Future<AuthResponse> register(
    @Body() RequestUser requestUser,
  );

  @POST("/auth/token/refresh")
  Future<AuthResponse> refresh(
    @Body() JwtRefresh jwtRefresh,
  );
}
