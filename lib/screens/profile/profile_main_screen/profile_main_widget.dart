import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_main_wm.dart';
@RoutePage()
class ProfileMainWidget extends ElementaryWidget<IProfileMainWidgetModel> {
  const ProfileMainWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileMainWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileMainWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Профиль"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: StreamBuilder<bool>(
          stream: wm.auth.stream,
          builder: (context, __) {
            final auth = wm.auth.isAuthorized;
            final buttonText = auth ? "ВЫЙТИ" : "ВОЙТИ / ЗАРЕГИСТРИРОВАТЬСЯ";

            return SizedBox(
              height: 50,
              child: FilledButton(
                onPressed: auth ? wm.onLogOut : wm.onLogIn,
                child: Center(
                  child: Text(
                    buttonText,
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
      ),
    );
  }
}
