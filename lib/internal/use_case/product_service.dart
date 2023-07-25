import 'package:cool_shop/data/client/product_client/product_client.dart';
import 'package:cool_shop/data/model/calculated_cart/calculated_cart.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/data/request/cart_request/cart_request.dart';
import 'package:cool_shop/data/request/fav_request/favorites_request.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

typedef CartState = EntityStateNotifier<CalculatedCart>;
typedef FavState = EntityStateNotifier<List<Product>>;

class ProductService {

  final AuthUseCase auth = AppComponents().authUseCase;
  ProductService({
    required client,
  }) : _client = client;

  final CartState _cartState = EntityStateNotifier();
  final FavState _favState = EntityStateNotifier();
  final ProductClient _client;
  String? _error;

  CartState get cartState => _cartState;

  FavState get favState => _favState;

  //с id удобнее работать
  List<int> favIds = [];

  get error => _error;

  Future<void> init() async {
    if(!auth.isAuthorized){
      return;
    }
    await loadFavs();
    await loadCart();
  }

  Future<void> loadFavs() async {
    if(!auth.isAuthorized){
      return;
    }
    try {
      final data = await _client.getFav();
      _favState.content(data);
      favIds = data.map((fav) => fav.id).toList();
      return;
    } catch (e, stackTrace) {
      //уведомили об ошибке
      _error = "Не получилось загрузить избранное";
      _favState.error();

      //подгружаем данные которые есть
      _favState.loading(_favState.value?.data);
      //мы уже не уверены,актуальные ли у нас данные, поэтому подгружаем их
      await _reloadAll();
      debugPrint("$e\n$stackTrace");

    }
  }

  Future<void> addToFav(int id) async {
    try {
      await _client.addFav(FavoritesRequest(product: id));
      return;
    } catch (e, stackTrace) {
      _error = "Не получилось добавить в избранное";
      _favState.error();

      _favState.loading(_favState.value?.data);

      debugPrint("$e\n$stackTrace");
      await _reloadAll();
    }
  }

  Future<void> removeFromFav(int id) async {
    try {
      await _client.deleteFave(FavoritesRequest(product: id));
      return;
    } catch (e, stackTrace) {
      _error = "Не получилось загрузить избранное";
      _favState.error();


      _favState.loading(_favState.value?.data);

      debugPrint("$e\n$stackTrace");
      await _reloadAll();
    }
  }

  Future<void> loadCart() async {
    if(!auth.isAuthorized){
      return;
    }
    try {
      final data = await _client.getCalculatedCart();
      _cartState.content(data);
      return;
    } catch (e, stackTrace) {

      _error = "Не удалось загрузить корзину";
      _cartState.error();


      _cartState.loading(_cartState.value?.data);
      debugPrint("$e\n$stackTrace");
      await _reloadAll();
    }
  }

  Future<void> addToCart(int id) async {

    try {
      await _client.addToCart(CartRequest(productId: id));
      return;
    }  catch (e, stackTrace) {

      _error = "Не получилось добавить в корзину";
      _cartState.error();

      _cartState.loading(_cartState.value?.data);
      debugPrint("$e\n$stackTrace");
      await _reloadAll();
    }
  }

  Future<void> removeFromCart(int id) async {
    try {
      await _client.deleteFromCart(CartRequest(productId: id));
      return;
    } catch (e, stackTrace) {

      _error = "Не получилось удалить товар из корзины";
      _cartState.error();

      _cartState.loading(_cartState.value?.data);
      debugPrint("$e\n$stackTrace");
      await _reloadAll();
    }
  }

  Future<void> updateCart(int id, int count) async {
    try {
      _client.updateCart(CartRequest(productId: id, count: count));
      return;
    } catch (e, stackTrace) {

      _error = "Не удалось обновить корзину";
      _cartState.error();


      _cartState.loading(_cartState.value?.data);
      debugPrint("$e\n$stackTrace");
      await _reloadAll();
    }
  }

  void dispose() {
    _cartState.dispose();
    _favState.dispose();
  }

   Future<void> _reloadAll() async{
    await loadCart();
    await loadFavs();

  }
}
