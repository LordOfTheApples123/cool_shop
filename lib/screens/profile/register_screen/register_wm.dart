import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/data/request/request_user/request_user.dart';
import 'package:cool_shop/internal/navigation/app_router.dart';
import 'package:cool_shop/screens/utils/snack_bar_utl.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:cool_shop/screens/utils/value_stream_wrapper.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'register_model.dart';
import 'register_widget.dart';

abstract class IRegisterWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get firstNameController;

  TextEditingController get secondNameController;

  TextEditingController get emailController;

  TextEditingController get phoneController;

  ValueStreamWrapper<String?> get firstNameError;

  ValueStreamWrapper<String?> get secondNameError;

  ValueStreamWrapper<String?> get emailError;

  ValueStreamWrapper<String?> get phoneError;

  Future<void> onButton();
}

RegisterWidgetModel defaultRegisterWidgetModelFactory(BuildContext context) {
  return RegisterWidgetModel(RegisterModel(
    errorHandler: context.read(),
    authClient: context.read(),
  ));
}

class RegisterWidgetModel extends WidgetModel<RegisterWidget, RegisterModel>
    with ThemeProvider
    implements IRegisterWidgetModel {
  RegisterWidgetModel(RegisterModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    firstNameController.addListener(_listenFirstName);

    secondNameController.addListener(_listenSecondName);

    final String? preview = widget.emailPreview;
    if (preview != null) {
      emailController.text = preview;
    }
    emailController.addListener(_listenMail);

    phoneController.addListener(_listenPhone);
  }

  void _listenFirstName() {
    final text = firstNameController.text;
    if (text.isEmpty) {
      firstNameError.accept("Поле обязательно");
      return;
    }
    if (text.contains(RegExp(r'[0-9]'))) {
      firstNameError.accept("В данном поле не может быть цифр");
    }
    firstNameError.accept(null);
  }

  void _listenSecondName() {
    final text = secondNameController.text;
    if (text.isEmpty) {
      secondNameError.accept("Поле обязательно");
      return;
    }
    if (text.contains(RegExp(r'[0-9]'))) {
      secondNameError.accept("В данном поле не может быть цифр");
    }
    secondNameError.accept(null);
  }

  void _listenMail() {
    final text = emailController.text;
    if (text.isEmpty) {
      emailError.accept("Поле обязательно");
      return;
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text)) {
      emailError.accept("Неправильный формат почты");
      return;
    }
    emailError.accept(null);
  }

  void _listenPhone() {
    final text = phoneController.text;
    if (text.isEmpty) {
      phoneError.accept("Поле обязательно");
      return;
    }
    if (!RegExp(r'(^(?:[+]7)?[0-9]{10,12}$)').hasMatch(text)) {
      phoneError.accept("Неправильный формат телефона");
      return;
    }
    phoneError.accept(null);
  }

  @override
  TextEditingController emailController = TextEditingController();

  @override
  ValueStreamWrapper<String?> emailError = ValueStreamWrapper();

  @override
  TextEditingController firstNameController = TextEditingController();

  @override
  ValueStreamWrapper<String?> firstNameError = ValueStreamWrapper();

  @override
  TextEditingController phoneController = TextEditingController();

  @override
  ValueStreamWrapper<String?> phoneError = ValueStreamWrapper();

  @override
  TextEditingController secondNameController = TextEditingController();

  @override
  ValueStreamWrapper<String?> secondNameError = ValueStreamWrapper();

  @override
  Future<void> onButton() async {
    if (!_validate()) {
      context.showSnackBar("Заполните форму правильно");
    }

    try {
      await model.register(
        RequestUser(
          firstName: firstNameController.text,
          secondName: secondNameController.text,
          email: emailController.text,
          //(((
          gender: "unknown",
          role: "client",
        ),
      );


      await model.emailPart1(emailController.text);

      _toAuth2();
    } catch (e) {
      debugPrint("$e wtf");
      rethrow;
    }
  }

  void _toAuth2(){
    context.router.navigate(AuthPart2Route(email: emailController.text));
  }

  bool _validate() {
    _listenFirstName();
    _listenMail();
    _listenPhone();
    _listenSecondName();

    return firstNameError.valueOrNull == null &&
        secondNameError.valueOrNull == null &&
        emailError.valueOrNull == null &&
        phoneError.valueOrNull == null;
  }

  @override
  void dispose() {
    firstNameController.dispose();
    secondNameController.dispose();
    emailController.dispose();
    phoneController.dispose();

    firstNameError.dispose();
    secondNameError.dispose();
    emailError.dispose();
    phoneError.dispose();
    super.dispose();
  }
}
