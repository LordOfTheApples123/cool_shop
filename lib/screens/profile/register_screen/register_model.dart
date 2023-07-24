import 'package:cool_shop/data/client/auth_client/auth_client.dart';
import 'package:cool_shop/data/request/email_part_1/email_part_1.dart';
import 'package:cool_shop/data/request/request_user/request_user.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';

// TODO: cover with documentation
/// Default Elementary model for Register module
class RegisterModel extends ElementaryModel {
  RegisterModel({required super.errorHandler, required this.authClient});

  final AuthClient authClient;
  static const codeLength = 4;

  Future<void> register(RequestUser requestUser) async{
    try{
      await authClient.register(requestUser);
    } catch (e, stacktrace){
      debugPrint("$e\n$stacktrace");
      rethrow;
    }
  }

  Future<void> emailPart1(String email) async {
    try{
      await authClient.emailPart1(
          EmailPart1(email: email, digits: codeLength)
      );
    } on DioException catch(e){
      //ну это уже ни в какие ворота

      debugPrint("${e.toString()}\n${e.stackTrace}");
      rethrow;
    }
  }
}
