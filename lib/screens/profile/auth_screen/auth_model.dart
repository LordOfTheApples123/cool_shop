import 'package:cool_shop/data/client/auth_client/auth_client.dart';
import 'package:cool_shop/data/request/email_part_1/email_part_1.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

// TODO: cover with documentation
/// Default Elementary model for Auth module
class AuthModel extends ElementaryModel {
  AuthModel({required super.errorHandler, required this.authClient});

  final AuthClient authClient;
  static const int codeLength = 4;

  Future<bool> isRegistered(String email) async{
    try{
      await authClient.emailPart1(
        EmailPart1(email: email, digits: codeLength)
      );
      debugPrint("true из тела");
      return true;
    } on DioException catch(e){
      if(e.response?.statusCode == 200 || e.response?.statusCode == 201){
        debugPrint("бред");
        return true;
      }
      //мне не нравится, что для стандартного сценария надо падать с
      //DioException. Было бы хорошо более явно получать информацию
      //зарегистрирован ли пользователь
      if(e.response?.statusCode == 451){
        debugPrint("false 451");
        return false;
      }

      debugPrint("${e.toString()}\n${e.stackTrace}");
      rethrow;
    }
  }
}
