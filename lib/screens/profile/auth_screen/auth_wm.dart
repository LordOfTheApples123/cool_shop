import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/internal/navigation/app_router.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:cool_shop/screens/utils/value_stream_wrapper.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_model.dart';
import 'auth_widget.dart';

abstract class IAuthWidgetModel extends IWidgetModel implements IThemeProvider {
  TextEditingController get emailController;
  ValueStreamWrapper<String?> get errorStream;

  bool get hasError;


  Future<void> onSave();
}

AuthWidgetModel defaultAuthWidgetModelFactory(BuildContext context) {
  return AuthWidgetModel(
    AuthModel(
      errorHandler: context.read(),
      authClient: context.read(),
    )
  );
}

class AuthWidgetModel
    extends WidgetModel<AuthWidget, AuthModel>
    with ThemeProvider
    implements IAuthWidgetModel {

  AuthWidgetModel(AuthModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    emailController.addListener(_validateMail);
  }

  String? _prevText;

  void _validateMail() {

    final text = emailController.text;
    //чтобы ничего не делать по тапу
    if(text == _prevText){
      _prevText = text;
      return;
    }
    if (text.isEmpty) {
      errorStream.accept("Поле обязательно");
      _disableButton = true;
      return;
    }
    if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text)) {
      errorStream.accept("Неправильный формат почты");
      _disableButton = true;
      return;
    }
    _disableButton = false;
    errorStream.accept(null);
  }

  @override
  TextEditingController emailController = TextEditingController();

  @override
  ValueStreamWrapper<String?> errorStream = ValueStreamWrapper();

  @override
  Future<void> onSave() async{
    final userRegistered = await model.isRegistered(emailController.text);
    debugPrint("kak $userRegistered");

    assert(isMounted, "widget is not mounted when using context, AuthWm.onSave()");

    final bool = userRegistered;
    if(bool){
      //компилятор говорит не вызывать роутер в асинк контексте
      _toAuthPart2();
      return;
    }
    _toRegister();
  }

  bool _disableButton = true;

  @override
  bool get hasError => _disableButton;

  @override
  void dispose() {
    emailController.dispose();
    errorStream.dispose();
    super.dispose();
  }

  void _toAuthPart2() {
    context.router.push(AuthPart2Route(email: emailController.text));
  }

  void _toRegister() {
    context.router.push(RegisterRoute(emailPreview: emailController.text));
  }
}
