import 'package:cool_shop/data/client/auth_client/auth_client.dart';
import 'package:cool_shop/data/request/jwt_refresh/jwt_refresh.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/app_dependency.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppComponents().init();

  runApp(const AppDependency());
}
