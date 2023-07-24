import 'package:auto_route/annotations.dart';
import 'package:cool_shop/internal/app.dart';
import 'package:cool_shop/screens/components/center_button_with_info.dart';
import 'package:cool_shop/screens/components/short_product_card.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'favorite_wm.dart';

@RoutePage()
class FavoriteWidget extends ElementaryWidget<IFavoriteWidgetModel> {
  const FavoriteWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFavoriteWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFavoriteWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Избранное"),
        automaticallyImplyLeading: false,
      ),
      body: StreamBuilder<bool>(
        stream: wm.auth.stream,
        builder: (context, __) {
          if (!wm.auth.isAuthorized) {
            return  CenterButtonWithInfo(
              infoText: "Чтобы добавлять в избранное, авторизуйтесь",
              buttonText: "ВХОД / РЕГИСТРАЦИЯ",
              onTap: wm.navigateToProfile,
            );;
          }

          return EntityStateNotifierBuilder(
            listenableEntityState: wm.service.favState,
            errorBuilder: (context, __, ___) {
              return Center(
                child: Text(
                  "Сервер поел и спит",
                  style: wm.textTheme.titleSmall,
                ),
              );
            },
            loadingBuilder: (context, value) {
              final products = value ?? [];

              if (products.isEmpty) {
                return CenterButtonWithInfo(
                  infoText: "В вашем избранном пока ничего нет",
                  buttonText: "ПЕРЕЙТИ К ПОКУПКАМ",
                  onTap: wm.navigateToCatalog,
                );
              }

              return GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 5,
                ),
                itemBuilder: (context, index) {
                  final favs = value ?? [];
                  final favIds = favs.map((fav) => fav.id).toList();
                  final liked = favIds.contains(products[index].id);

                  return ProductCardWidget(
                      product: products[index],
                      selected: liked,
                      onFavourite: null,
                      onBasket: () {
                        wm.onBasket(products[index].id);
                      });
                },
              );
            },
            builder: (context, value) {
              final products = value ?? [];
              return GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 5,
                ),
                itemBuilder: (context, index) {
                  final favs = value ?? [];
                  final favIds = favs.map((fav) => fav.id).toList();
                  final liked = favIds.contains(products[index].id);

                  return ProductCardWidget(
                      product: products[index],
                      selected: liked,
                      onFavourite: () {
                        wm.onFavorite(products[index].id);
                      },
                      onBasket: () {
                        wm.onBasket(products[index].id);
                      });
                },
              );
            },
          );
        },
      ),
    );
  }
}

