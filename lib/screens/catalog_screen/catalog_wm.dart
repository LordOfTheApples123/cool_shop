import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/buffer_service_wrapper.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:cool_shop/screens/utils/snack_bar_utl.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'catalog_model.dart';
import 'catalog_widget.dart';

abstract class ICatalogWidgetModel extends IWidgetModel
    implements IThemeProvider {
  AuthUseCase get auth;

  void showSnackBar();

  Future<(List<Product> content, bool isMore)> loadMore(_);

  BufferServiceWrapper get serviceWrapper;

  Future<void> onFavorite(bool like, int id, Product preview);

  Future<void> onBasket(int id, Product preview);
}

CatalogWidgetModel defaultCatalogWidgetModelFactory(BuildContext context) {
  return CatalogWidgetModel(
    CatalogModel(
      errorHandler: context.read(),
      client: context.read(),
    ),
  );
}

class CatalogWidgetModel extends WidgetModel<CatalogWidget, CatalogModel>
    with ThemeProvider
    implements ICatalogWidgetModel {
  CatalogWidgetModel(CatalogModel model) : super(model);

  @override
  Future<(List<Product>, bool)> loadMore(_) async {
    try {
      final data = await model.getNextPage();
      return data;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> onFavorite(bool like, int id, Product preview) async {
    debugPrint("onfav");
    if (like) {
      await serviceWrapper.removeFromFav(id, preview);
      return;
    }

    await serviceWrapper.addToFav(id, preview);
  }

  @override
  BufferServiceWrapper serviceWrapper = AppComponents().serviceWrapper;

  @override
  AuthUseCase auth = AppComponents().authUseCase;

  @override
  Future<void> onBasket(int id, Product product) async {
    await serviceWrapper.addToCart(id, product);
  }

  @override
  void showSnackBar() {
    debugPrint("snakbar");
    context.showSnackBar("Необходимо авторизоваться");
  }
}
