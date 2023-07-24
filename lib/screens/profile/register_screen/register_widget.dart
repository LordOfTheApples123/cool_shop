import 'package:auto_route/annotations.dart';
import 'package:cool_shop/screens/components/polytics_text_widget.dart';
import 'package:cool_shop/screens/components/styled_text_field.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'register_wm.dart';

@RoutePage()
class RegisterWidget extends ElementaryWidget<IRegisterWidgetModel> {
  const RegisterWidget({
    this.emailPreview,
    Key? key,
    WidgetModelFactory wmFactory = defaultRegisterWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String? emailPreview;

  @override
  Widget build(IRegisterWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Регистрация"),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: StyledTextFieldWithValidation(
                    textController: wm.firstNameController,
                    errorTextStream: wm.firstNameError,
                    hintText: "Иван",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: StyledTextFieldWithValidation(
                      textController: wm.secondNameController,
                      errorTextStream: wm.secondNameError,
                      hintText: "Иванов"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: StyledTextFieldWithValidation(
                    textController: wm.phoneController,
                    errorTextStream: wm.phoneError,
                    hintText: "+7 (900) 000 00 00",
                    isPhone: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: StyledTextFieldWithValidation(
                      textController: wm.emailController,
                      errorTextStream: wm.emailError,
                      hintText: "example@yandex.ru"),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const PolyticsTextWidget(),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: FilledButton(
                    onPressed: wm.onButton,
                    child: Center(
                      child: Text(
                        "СОХРАНИТЬ",
                        style: wm.textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.44,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
