import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_part2_wm.dart';

@RoutePage()
class AuthPart2Widget extends ElementaryWidget<IAuthPart2WidgetModel> {
  const AuthPart2Widget({
    required this.email,
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthPart2WidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String email;

  @override
  Widget build(IAuthPart2WidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Вход"),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  "Ваш email",
                  style: wm.textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: TextField(
                  controller: wm.blankController,
                  readOnly: true,
                ),
              ),
              //я не знаю как сделать красивый textfield как на макете
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  textAlign: TextAlign.center,
                  controller: wm.codeController,
                  style: wm.textTheme.bodySmall?.copyWith(
                    fontSize: 32,
                  ),
                ),
              ),

              StreamBuilder<int>(
                stream: wm.codeLenStream.stream,
                builder: (context, snapshot) {
                  final codeLength = snapshot.data ?? 0;
                  return SizedBox(
                    height: 50,
                    child: FilledButton(
                      onPressed: codeLength != 4 ? null : ()async{
                        await wm.onAuth();
                      },
                      child: Center(
                        child: Text(
                          "ВОЙТИ",
                          style: wm.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.44,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          )),
    );
  }
}
