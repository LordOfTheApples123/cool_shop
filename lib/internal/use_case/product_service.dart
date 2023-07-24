import 'package:cool_shop/data/client/product_client/product_client.dart';
import 'package:cool_shop/data/model/calculated_cart/calculated_cart.dart';
import 'package:cool_shop/data/model/cart_product/cart_product.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/data/request/cart_request/cart_request.dart';
import 'package:cool_shop/data/request/fav_request/favorites_request.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

typedef CartState = EntityStateNotifier<CalculatedCart>;
typedef FavState = EntityStateNotifier<List<Product>>;

class ProductService{
  ProductService({
    required client,
  }) : _client = client;

  final CartState _cartState = EntityStateNotifier();
  final FavState _favState = EntityStateNotifier();
  final ProductClient _client;

  CartState get cartState => _cartState;

  FavState get favState => _favState;


  Future<void> init() async {
    await loadFavs();
    await loadCart();
  }

  Future<void> loadFavs() async {
    _favState.loading(_favState.value?.data);
    try {
      final data = await _client.getFav();
      _favState.content(data);
    } catch (e, stackTrace) {
      _favState.error();
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }

  Future<void> addToFav(int id) async {
    _favState.loading(_favState.value?.data);
    try {
      await _client.addFav(FavoritesRequest(product: id));
      loadFavs();
    } catch (e, stackTrace) {
      _favState.error();
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }

  Future<void> removeFromFav(int id) async {
    _favState.loading(_favState.value?.data);
    try {
      await _client.deleteFave(FavoritesRequest(product: id));
      loadFavs();
    } catch (e, stackTrace) {
      _favState.error();
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }

  Future<void> loadCart() async {
    _cartState.loading(_cartState.value?.data);
    try {
      final data = await _client.getCalculatedCart();
      _cartState.content(data);
    } catch (e, stackTrace) {
      _cartState.error();
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }

  Future<void> addToCart(int id) async {
    _cartState.loading(_cartState.value?.data);
    try {
      await _client.addToCart(CartRequest(productId: id));
      loadCart();
    } catch (e, stackTrace) {
      _cartState.error();
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }

  Future<void> removeFromCart(int id) async {
    _cartState.loading(_cartState.value?.data);
    try {
      await _client.deleteFromCart(CartRequest(productId: id));
      loadCart();
    } catch (e, stackTrace) {
      _cartState.error();
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }

  Future<void> updateCart(int id, int count) async {
    _cartState.loading(_cartState.value?.data);
    try {
      _client.updateCart(CartRequest(productId: id, count: count));
      loadCart();
    } catch (e, stackTrace) {
      _cartState.error();
      debugPrint("$e\n$stackTrace");
      rethrow;
    }
  }


  void dispose() {
    _cartState.dispose();
    _favState.dispose();
  }
}
