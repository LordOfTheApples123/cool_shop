import 'package:cool_shop/data/model/calculated_cart/calculated_cart.dart';
import 'package:cool_shop/data/model/cart_product/cart_product.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/internal/app_components.dart';
import 'package:cool_shop/internal/use_case/auth_use_case.dart';
import 'package:cool_shop/internal/use_case/product_service.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

typedef FutureCallback = Future<void> Function()?;

///самая лучшая часть проекта и моя личная гордость
///в понедельник Никита говорил про буффер действий юзера.
///Рисуем отзывчивый UI, а когда юзер успокоился и не тыкал на кнопки хотя бы
///секунду делаем запросы и обновляем по необходимости данные, которые
///пришли с сервера
class BufferServiceWrapper {
  BufferServiceWrapper(this._productService, {this.maxBufferCapacity = 20});

  final ProductService _productService;

  Object? _subscription;
  final List<FutureCallback?> _buffer = [];
  final int maxBufferCapacity;

  EntityStateNotifier<List<Product>> get favState => _productService.favState;

  EntityStateNotifier<CalculatedCart> get cartState =>
      _productService.cartState;

  List<int> get favIds => _productService.favIds;

  String? get error => _productService.error;

  ///передаем внутрь service.<request>, наверное полукостыльно
  ///было бы лучше написать Event и EventHandler, но времени мало
  Future<void> _handleCallback({FutureCallback? request}) async {
    ///принцип подписок из FutureBuilder
    _subscription = Object();
    final subscription = _subscription;

    ///ждём 1 секунду
    await Future.delayed(const Duration(seconds: 1));

    if (_subscription != subscription) {
      ///сюда мы попадаем, если за секунду поменялась подписка
      ///а поменяться она могла если метод вызвался ещё раз

      ///добавляем реквест в буфер
      _buffer.add(request);

      ///на случай если юзер больной на голову, и начнёт тыкать по всем кнопкам.
      ///Чтобы в один момент на сервер не упала бомба из 1000 запросов,
      ///опустошаем буфер по <magic_number> запросов
      if (_buffer.length >= maxBufferCapacity) {
        ///чистим буффер, и пока пользователь яростно бьёт по кнопкам, делаем запросы

        final copyList = List<FutureCallback>.from(_buffer);
        _buffer.clear();
        await _resolve(copyList);

        return;
      }
      return;
    }

    ///сюда мы попадаем из последнего вызванного метода, когда
    ///подписка актуальна

    _buffer.add(request);
    final copyList = List<FutureCallback>.from(_buffer);
    _buffer.clear();
    await _resolve(copyList);
  }

  Future<void> _resolve(List<FutureCallback?> list) async {
    //здесь немного жиденько
    //просто вызываем запросы
    //огромный простор для оптимизации:
    //-не вызывать, исключающие друг друга запросы
    // (addToFavorite, removeFromFavorite)
    //-многочисленное обновление товара, заменить на один put
    //запрос с финальным count
    //но дедлайн был 6 часов назад :(

    //ещё было бы классно, если бы апи, поддерживало добавление списка
    //id вместо одного id, и можно было бы одним большим запросом, добавить
    //10 продуктов в избранное

    for (FutureCallback? request in list) {
      await request?.call();
    }
    await loadCart();
    await loadFav();
  }

  ///
  ///
  /// делаем превью ниже
  ///
  /// и запихиваем запрос в буфер
  ///

  Future<void> addToCart(int id, Product preview) async {
    final cart = cartState.value?.data;
    //cart.products - unmodifiable collection
    final products = List<CartProduct>.of(cart?.products ?? []);

    for (CartProduct cartProduct in products) {
      debugPrint(cartProduct.product.id.toString());
    }
    final cartProduct = products
        .where((element) => element.product.id == preview.id)
        .firstOrNull;

    if (cartProduct != null) {
      await updateCart(
        id: id,
        count: cartProduct.count + 1,
        preview: cartProduct,
      );
      return;
    }

    products.add(CartProduct(count: 1, product: preview));

    //флюттер это про бэкенд
    //всё ещё не понимаю прикола с ценой стрингом, но зачем это нужно, никто не
    //расскажет и никто не пофиксит, так что делаю сам
    final price = cart?.price ?? "0";
    final finalPrice = double.parse(price) + double.parse(preview.price ?? "0");
    final newCart = cart?.copyWith(
        price: finalPrice.toString(),
        count: cart.count + 1,
        products: products);

    cartState.loading(newCart);
    cartState.content(newCart ??
        CalculatedCart(
            price: finalPrice.toString(), count: 1, products: products));

    await _handleCallback(request: () async {
      _productService.addToCart(id);
    });
  }

  Future<void> removeFromCart(int id, CartProduct preview, [int? count]) async {
    final cart = cartState.value?.data;
    final products = cart?.products ?? [];
    final newProducts = List.of(products);

    final price = cart?.price ?? "0";
    final finalPrice = double.parse(price) -
        double.parse(preview.product.price ?? "0") * preview.count;

    newProducts.remove(preview);
    final newCart = cart?.copyWith(
        price: finalPrice.toString(),
        products: newProducts,
        count: cart.count - preview.count);

    cartState.loading(newCart);
    cartState.content(
        newCart ?? const CalculatedCart(price: "0", count: 0, products: []));

    await _handleCallback(request: () async {
      await _productService.removeFromCart(id);
    });
  }

  ///-1 +1
  Future<void> updateCart(
      {required int id,
      required CartProduct preview,
      required int count}) async {
    final cart = cartState.value?.data;
    final products = cart?.products ?? [];

    final int operation = count - preview.count;

    final newProducts = products
        .map((cartProduct) => cartProduct == preview
            ? cartProduct.copyWith(count: count)
            : cartProduct)
        .toList();

    for (CartProduct element in products) {
      debugPrint((element == preview).toString());
    }

    final price = cart?.price ?? "0";
    final finalPrice = double.parse(price) +
        operation * double.parse(preview.product.price ?? "0") * preview.count;

    final newCart = cart?.copyWith(
            price: finalPrice.toString(),
            products: newProducts,
            count: cart.count + operation) ??
        const CalculatedCart(price: "0", count: 0, products: []);

    debugPrint(newCart.count.toString());

    cartState.loading(newCart);
    cartState.content(newCart);

    await _handleCallback(request: () async {
      await _productService.updateCart(id, count);
    });
  }

  Future<void> addToFav(int id, Product preview) async {
    final favs = favState.value?.data ?? [];
    //добавляем в начало
    final modifiableFavs = [preview];
    modifiableFavs.addAll(favs);
    favIds.add(id);

    favState.loading(modifiableFavs);
    favState.content(modifiableFavs);
    await _handleCallback(request: () async {
      await _productService.addToFav(id);
    });
  }

  Future<void> removeFromFav(int id, Product preview) async {
    final favs = favState.value?.data ?? [];
    final modifiableFavs = List.of(favs);
    modifiableFavs.remove(preview);
    favIds.remove(id);
    favState.loading(modifiableFavs);
    favState.content(modifiableFavs);

    await _handleCallback(
      request: () async {
        await _productService.removeFromFav(id);
      },
    );
  }

  Future<void> loadFav() async {
    await _productService.loadFavs();
  }

  Future<void> loadCart() async {
    await _productService.loadCart();
  }

  void resetStates() {
    favIds.clear();
    favState.loading();
    cartState.loading();
    favState.content([]);

    cartState.content(const CalculatedCart(price: "0", count: 0, products: []));
  }
}
