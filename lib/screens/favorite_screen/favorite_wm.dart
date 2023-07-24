import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:cool_shop/screens/utils/snack_bar_utl.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_model.dart';
import 'favorite_widget.dart';

abstract class IFavoriteWidgetModel extends IWidgetModel implements IThemeProvider{
  AuthUseCase get auth;

  ProductService get service;


  void navigateToProfile();

  void onBasket(int id) {}

  void onFavorite(int id) {}

  void navigateToCatalog() {
  }
}

FavoriteWidgetModel defaultFavoriteWidgetModelFactory(BuildContext context) {
  return FavoriteWidgetModel(
    FavoriteModel(
      errorHandler: context.read(),
    ),
  );

}

// TODO: cover with documentation
/// Default widget model for FavoriteWidget
class FavoriteWidgetModel extends WidgetModel<FavoriteWidget, FavoriteModel>
    with ThemeProvider
    implements IFavoriteWidgetModel {

  FavoriteWidgetModel(FavoriteModel model) : super(model);

  @override
  AuthUseCase auth = AppComponents().authUseCase;

  @override
  //force and wrap оправдан!
  ProductService service = AppComponents().service!;

  @override
  void navigateToProfile() {
    // TODO: implement navigateToProfile
  }

  @override
  void onBasket(int id) {
    service.addToCart(id);
  }

  @override
  void onFavorite(int id) {
    service.removeFromFav(id);
  }

  @override
  void navigateToCatalog() {
    // TODO: implement navigateToCatalog
  }


}
