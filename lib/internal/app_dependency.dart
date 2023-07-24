import 'package:cool_shop/data/client/auth_client/auth_client.dart';
import 'package:cool_shop/data/client/product_client/product_client.dart';
import 'package:cool_shop/internal/app.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/error_handler/error_handler.dart';
import 'package:cool_shop/internal/token_handling/token_interceptor.dart';
import 'package:cool_shop/internal/token_handling/token_repository.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDependency extends StatelessWidget {
  const AppDependency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dio = AppComponents().dio;
    return MultiProvider(
      providers: [
        Provider<ErrorHandler>(create: (_) => DefaultErrorHandler()),
        Provider<ProductClient>(
          create: (context) => ProductClient(dio),
        ),
        Provider<AuthClient>(
          create: (context) => AuthClient(dio),
        ),
        Provider<AuthUseCase>(
          create: (context) => AuthUseCase(),
          dispose: (context, instance) => instance.dispose(),
        )
      ],
      child: App(),
    );
  }
}
