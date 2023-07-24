import 'package:cool_shop/data/client/auth_client/auth_client.dart';
import 'package:cool_shop/data/request/email_part_2/email_part_2.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';

// TODO: cover with documentation
/// Default Elementary model for AuthPart2 module
class AuthPart2Model extends ElementaryModel {
  AuthPart2Model({required super.errorHandler, required this.authClient});

  final AuthClient authClient;

  Future<bool> verifyCode(String email, String code) async{
    try{
      await authClient.emailPart2(EmailPart2(email: email, code: code));
      return true;
    } on DioException catch(e, stacktrace){
      //верификация по коду ошибки *_*
      if(e.response?.statusCode == 451 || e.response?.statusCode == 401){
        return false;
      }

      debugPrint("$e\n$stacktrace");
      rethrow;
    }
  }
}
