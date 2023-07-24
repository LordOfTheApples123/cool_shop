import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:cool_shop/screens/utils/snack_bar_utl.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'catalog_model.dart';
import 'catalog_widget.dart';

abstract class ICatalogWidgetModel extends IWidgetModel implements IThemeProvider{
  AuthUseCase get auth;

  void showSnackBar();

  Future<(List<Product> content, bool isMore)> loadMore(_);

  ProductService get productService;

  void onFavorite(bool like, int id);

  void onBasket(int id) {}
}

CatalogWidgetModel defaultCatalogWidgetModelFactory(BuildContext context) {
  return CatalogWidgetModel(
    CatalogModel(
      errorHandler: context.read(),
      client: context.read(),
    ),
  );
}

// TODO: cover with documentation
/// Default widget model for CatalogWidget
class CatalogWidgetModel extends WidgetModel<CatalogWidget, CatalogModel>
    with ThemeProvider
    implements ICatalogWidgetModel {

  CatalogWidgetModel(CatalogModel model) : super(model);

  @override
  Future<(List<Product>, bool)> loadMore(_) async {
    try{
      final data = await model.getNextPage();
      return data;
    } catch(e){
      debugPrint(e.toString());
      rethrow;
    }
  }
  @override
  void onFavorite(bool like, int id){

    debugPrint("onfav");
    if(like){
      productService.removeFromFav(id);
      return;
    }

    productService.addToFav(id);
  }



  @override
  //force and wrap оправдан!
  ProductService productService = AppComponents().service!;

  @override
  AuthUseCase auth = AppComponents().authUseCase;

  @override
  void onBasket(int id) {

    debugPrint("onbasket");
    productService.addToCart(id);
  }

  @override
  void showSnackBar() {
    debugPrint("snakbar");
    context.showSnackBar("Необходимо авторизоваться");
  }
}
