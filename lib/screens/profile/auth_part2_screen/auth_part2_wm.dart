import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/screens/utils/snack_bar_utl.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:cool_shop/screens/utils/value_stream_wrapper.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_part2_model.dart';
import 'auth_part2_widget.dart';

abstract class IAuthPart2WidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get blankController;

  TextEditingController get codeController;

  ValueStreamWrapper<int> get codeLenStream;

  Future<void> onAuth();

  AuthUseCase get auth;
}

AuthPart2WidgetModel defaultAuthPart2WidgetModelFactory(BuildContext context) {
  return AuthPart2WidgetModel(
    AuthPart2Model(
      errorHandler: context.read(),
      authClient: context.read()
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for AuthPart2Widget
class AuthPart2WidgetModel extends WidgetModel<AuthPart2Widget, AuthPart2Model>
    with ThemeProvider
    implements IAuthPart2WidgetModel {
  AuthPart2WidgetModel(AuthPart2Model model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    blankController.text = widget.email;
    codeController.addListener(_updateLength);
  }

  @override
  TextEditingController blankController = TextEditingController();

  @override
  void dispose() {
    codeController.dispose();
    blankController.dispose();
    codeLenStream.dispose();
    super.dispose();
  }

  @override
  TextEditingController codeController = TextEditingController();

  @override
  Future<void> onAuth() async{
    try{
final verified = await model.verifyCode(widget.email, codeController.text);
      if(!verified){
        //компилятору не нравится работа с контекстом в async методах
        _showWrongCodeSnackBar();
        return;
      }
      auth.auth();
      _popToProfile();
    } catch (e){
      debugPrint(e.toString());
      rethrow;
    }
  }

  void _updateLength() {
    codeLenStream.accept(codeController.text.length);
  }

  @override
  ValueStreamWrapper<int> codeLenStream = ValueStreamWrapper();

  void _popToProfile() {
    context.router.popUntilRoot();
  }

  void _showWrongCodeSnackBar() {
    context.showSnackBar("Неправильный код");
  }

  @override
  AuthUseCase get auth => context.read();
}
