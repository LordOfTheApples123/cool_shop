import 'package:auto_route/annotations.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/screens/utils/pagination_builder.dart';
import 'package:cool_shop/screens/components/short_product_card.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'catalog_wm.dart';

@RoutePage()
class CatalogWidget extends ElementaryWidget<ICatalogWidgetModel> {
  const CatalogWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCatalogWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICatalogWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Каталог"),
        automaticallyImplyLeading: false,
      ),
      body: PaginationBuilder<Product>(
        paginationCallback: wm.loadMore,
        builder: (context, controller, snapshot) {
          final products = snapshot.data ?? <Product>[];

          if (products.isEmpty) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GridView.builder(
            controller: controller,
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4 / 5,
            ),
            itemBuilder: (context, index) {
              return StreamBuilder<bool>(
                stream: wm.auth.stream,
                builder: (context, snapshot) {
                  return EntityStateNotifierBuilder(
                    listenableEntityState: wm.serviceWrapper.favState,
                    loadingBuilder: (context, value) {

                      final favIds = wm.serviceWrapper.favIds;
                      final liked = favIds.contains(products[index].id);

                      return ProductCardWidget(
                        product: products[index],
                        selected: liked,
                        onFavourite: !wm.auth.isAuthorized
                            ? wm.showSnackBar
                            : () => wm.onFavorite(
                            liked, products[index].id, products[index]),
                        onBasket: !wm.auth.isAuthorized
                            ? wm.showSnackBar
                            : () => wm.onBasket(
                            products[index].id, products[index]),
                      );
                    },
                    builder: (context, value) {
                      final favIds = wm.serviceWrapper.favIds;
                      final liked = favIds.contains(products[index].id);

                      return ProductCardWidget(
                        product: products[index],
                        selected: liked,
                        onFavourite: !wm.auth.isAuthorized
                            ? wm.showSnackBar
                            : () async => await wm.onFavorite(
                                liked, products[index].id, products[index]),
                        onBasket: !wm.auth.isAuthorized
                            ? wm.showSnackBar
                            : () async => wm.onBasket(
                                products[index].id, products[index]),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
