import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/navigation/app_router.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:cool_shop/screens/utils/value_stream_wrapper.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_main_model.dart';
import 'profile_main_widget.dart';

abstract class IProfileMainWidgetModel extends IWidgetModel
    implements IThemeProvider {
  void onLogIn();
  void onLogOut();

  AuthUseCase get auth;
}

ProfileMainWidgetModel defaultProfileMainWidgetModelFactory(
    BuildContext context) {
  return ProfileMainWidgetModel(
    ProfileMainModel(
      errorHandler: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for ProfileMainWidget
class ProfileMainWidgetModel
    extends WidgetModel<ProfileMainWidget, ProfileMainModel>
    with ThemeProvider
    implements IProfileMainWidgetModel {
  ProfileMainWidgetModel(ProfileMainModel model) : super(model);

  @override
  void onLogOut(){
    //logout
  }

  @override
  void onLogIn(){
    context.router.navigate(AuthRoute());
  }

  @override
  // TODO: implement auth
  AuthUseCase get auth => context.read();


}
