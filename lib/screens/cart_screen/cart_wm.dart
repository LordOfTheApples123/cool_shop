import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/data/model/cart_product/cart_product.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/navigation/app_router.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/buffer_service_wrapper.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
import 'cart_widget.dart';

abstract class ICartWidgetModel extends IWidgetModel
    implements IThemeProvider {
  BufferServiceWrapper get serviceWrapper;

  AuthUseCase get auth;

  void navigateToCatalog() {
  }

  void navigateToProfile() {
  }


  Future<void> deleteFromCart(int index, CartProduct preview);

  Future<void> updateCart({required int count, required int id, required CartProduct preview});

  Future<void> addToCart(int index, Product preview);

  Future<void> onFavorite(bool liked, int id, Product product);

  void onOrder();
}

CartWidgetModel defaultCartWidgetModelFactory(BuildContext context) {
  return CartWidgetModel(CartModel(
    context.read(),
  ));
}

class CartWidgetModel extends WidgetModel<CartWidget, CartModel>
    with ThemeProvider
    implements ICartWidgetModel {
  CartWidgetModel(CartModel model) : super(model);


  @override
  AuthUseCase auth = AppComponents().authUseCase;

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
  Future<void> addToCart(int id, Product preview) async {
    await serviceWrapper.addToCart(id, preview);
  }

  @override
  Future<void> deleteFromCart(int id, CartProduct preview) async {
    await serviceWrapper.removeFromCart(id, preview);
  }

  @override
  Future<void> onFavorite(bool liked, int id, Product preview) async {
    if(liked){
      await serviceWrapper.removeFromFav(id, preview);
      return;
    }

    await serviceWrapper.addToFav(id, preview);
  }

  @override
  Future<void> updateCart({required int count, required int id, required CartProduct preview}) async {
    if(count == 0){
      return;
    }

    await serviceWrapper.updateCart(id: id, preview: preview, count: count);
  }

  @override
  void onOrder() {
    // TODO: implement onOrder
  }

  @override
  BufferServiceWrapper  serviceWrapper = AppComponents().serviceWrapper;
}
