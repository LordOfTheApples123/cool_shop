import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:cool_shop/screens/utils/theme_provider.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
import 'cart_widget.dart';

abstract class ICartWidgetModel extends IWidgetModel
    implements IThemeProvider {
  ProductService get service;

  AuthUseCase get auth;

  void navigateToCatalog() {
  }

  void navigateToProfile() {
  }


  void deleteFromCart(int index) {}

  void updateCart(int count, int id) {}

  void addToCart(int index) {}

  void onFavorite(bool liked, int id) {}

  void onOrder() {
  }
}

CartWidgetModel defaultCartWidgetModelFactory(BuildContext context) {
  return CartWidgetModel(CartModel(
    context.read(),
  ));
}

// TODO: cover with documentation
/// Default widget model for CartWidget
class CartWidgetModel extends WidgetModel<CartWidget, CartModel>
    with ThemeProvider
    implements ICartWidgetModel {
  CartWidgetModel(CartModel model) : super(model);

  @override
  //force and wrap оправдан!
  ProductService service = AppComponents().service!;

  @override
  AuthUseCase auth = AppComponents().authUseCase;

  @override
  void navigateToCatalog() {
    // TODO: implement navigateToCatalog
  }

  @override
  void navigateToProfile() {
    // TODO: implement navigateToProfile
  }

  @override
  void addToCart(int id) {
    service.addToCart(id);
  }

  @override
  void deleteFromCart(int id) {
    service.removeFromCart(id);
  }

  @override
  void onFavorite(bool liked, int id) {
    if(liked){
      service.removeFromFav(id);
      return;
    }

    service.addToFav(id);
  }

  @override
  void updateCart(int count, int id) {
    if(count == 1){
      return;
    }

    service.updateCart(id, count);
  }

  @override
  void onOrder() {
    // TODO: implement onOrder
  }
}
