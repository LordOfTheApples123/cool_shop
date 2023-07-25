import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/navigation/app_router.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/buffer_service_wrapper.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:cool_shop/screens/utils/snack_bar_utl.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_model.dart';
import 'favorite_widget.dart';

abstract class IFavoriteWidgetModel extends IWidgetModel
    implements IThemeProvider {
  AuthUseCase get auth;

  BufferServiceWrapper get serviceWrapper;

  void navigateToProfile();

  Future<void> onBasket(int id, Product preview);

  Future<void> onFavorite(int id, Product preview);

  void navigateToCatalog() {}
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
  void navigateToProfile() {
    context.router.navigate(
      ProfileTab(
        children: [
          ProfileMainRoute(),
        ],
      ),
    );
  }

  @override
  Future<void> onBasket(int id, Product preview) async {
    await serviceWrapper.addToCart(id, preview);
  }

  @override
  Future<void> onFavorite(int id, Product preview) async {
    await serviceWrapper.removeFromFav(id, preview);
  }

  @override
  void navigateToCatalog() {
    context.router.navigate(
      CatalogTab(
        children: [
          CatalogRoute(),
        ],
      ),
    );
  }

  @override
  BufferServiceWrapper serviceWrapper = AppComponents().serviceWrapper;
}
