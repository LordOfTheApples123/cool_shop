import 'package:auto_route/annotations.dart';
import 'package:cool_shop/screens/components/polytics_text_widget.dart';
import 'package:cool_shop/screens/components/styled_text_field.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_wm.dart';

@RoutePage()
class AuthWidget extends ElementaryWidget<IAuthWidgetModel> {
  const AuthWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthWidgetModel wm) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Вход"),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Text(
              "Пожалуйста введите свой email, мы отправим вам проверочный код",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: wm.textTheme.bodyLarge,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 50),
              child: StyledTextFieldWithValidation(
                  hintText: "example@yandex.ru",
                  textController: wm.emailController,
                  errorTextStream: wm.errorStream),
            ),
            StreamBuilder(
              stream: wm.errorStream.stream,
              builder: (context, snapshot) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: SizedBox(
                    height: 50,
                    child: FilledButton(
                      onPressed: wm.hasError ? null : () async{
                        await wm.onSave();
                      },
                      child: Center(
                        child: Text(
                          "ПОЛУЧИТЬ КОД",
                          //цвет текста не тянется из ThemeData,
                          //может где-то disabled цвет перебивает, но я не нашёл где
                          style: wm.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.44,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const PolyticsTextWidget()
          ],
        ),
      ),
    );
  }
}

