import 'package:auto_route/annotations.dart';
import 'package:cool_shop/data/model/calculated_cart/calculated_cart.dart';
import 'package:cool_shop/data/model/cart_product/cart_product.dart';
import 'package:cool_shop/screens/components/cart_product_card.dart';
import 'package:cool_shop/screens/components/center_button_with_info.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'cart_wm.dart';

@RoutePage()
class CartWidget extends ElementaryWidget<ICartWidgetModel> {
  const CartWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Корзина"),
        automaticallyImplyLeading: false,
      ),
      body: StreamBuilder<bool>(
          stream: wm.auth.stream,
          builder: (context, snapshot) {
            if (!wm.auth.isAuthorized) {
              return CenterButtonWithInfo(
                infoText: "Авторизуйтесь, чтобы добавлять в корзину",
                buttonText: "ВХОД / РЕГИСТРАЦИЯ",
                onTap: wm.navigateToProfile,
              );
            }

            return EntityStateNotifierBuilder(
              listenableEntityState: wm.service.cartState,
              errorBuilder: (context, __, ___) {
                return Center(
                  child: Text(
                    "Сервер поел и спит",
                    style: wm.textTheme.titleSmall,
                  ),
                );
              },
              loadingBuilder: (context, value) {
                final cart = value;
                final products = cart?.products ?? [];

                if (products.isEmpty || cart == null) {
                  return CenterButtonWithInfo(
                    infoText: "В вашей корзине пусто",
                    buttonText: "Перейти к покупкам",
                    onTap: wm.navigateToCatalog,
                  );
                }

                return _ESBWithLike(cart: cart, wm: wm);
              },
              builder: (context, value) {
                final cart = value;
                final products = cart?.products ?? [];

                if (products.isEmpty || cart == null) {
                  return CenterButtonWithInfo(
                    infoText: "В вашей корзине пусто",
                    buttonText: "Перейти к покупкам",
                    onTap: wm.navigateToCatalog,
                  );
                }

                return _ESBWithLike(cart: cart, wm: wm);
              },
            );
          }),
    );
  }
}

class _ESBWithLike extends StatelessWidget {
  const _ESBWithLike({
    super.key,
    required this.wm,
    required this.cart,
  });

  final CalculatedCart cart;
  final ICartWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final cartProducts = cart.products;
    return EntityStateNotifierBuilder(
        listenableEntityState: wm.service.favState,
        loadingBuilder: (context, value) {
          final favs = value ?? [];
          final favIds = favs.map((fav) => fav.id).toList();
          int localDiscount = 0;

          for (CartProduct cartProduct in cartProducts) {
            final forProduct = cartProduct.product;
            final oldPrice = forProduct.oldPrice;
            if (oldPrice != null &&
                oldPrice.isNotEmpty &&
                oldPrice != "0.0000") {
              localDiscount += double.parse(oldPrice).floor();
            }
          }
          return Stack(
            children: [
              ListView.separated(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Divider(
                      thickness: 1,
                      color: wm.colorScheme.primaryContainer,
                    ),
                  );
                },
                itemCount: cartProducts.length + 1,
                itemBuilder: (context, index) {
                  if (index == cartProducts.length) {
                    return const SizedBox(
                      height: 140,
                    );
                  }

                  final liked = favIds.contains(cartProducts[index].product.id);
                  final productCount = cartProducts[index].count;
                  final product = cartProducts[index].product;

                  return CartProductCard(
                    isLiked: liked,
                    cartProduct: cartProducts[index],
                    onPlus: () {
                      wm.addToCart(product.id);
                    },
                    onMinus: productCount == 1
                        ? null
                        : () {
                            wm.updateCart(productCount - 1, product.id);
                          },
                    onFavorite: null,
                    onDelete: () {
                      wm.deleteFromCart(product.id);
                    },
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _BottomPriceBar(
                  onTap: wm.onOrder,
                  price: cart.price,
                  discount:
                      localDiscount == 0 ? null : localDiscount.toString(),
                ),
              )
            ],
          );
        },
        builder: (context, value) {
          final favs = value ?? [];
          final favIds = favs.map((fav) => fav.id).toList();

          int localDiscount = 0;

          for (CartProduct cartProduct in cartProducts) {
            final forProduct = cartProduct.product;
            final oldPrice = forProduct.oldPrice;
            if (oldPrice != null &&
                oldPrice.isNotEmpty &&
                oldPrice != "0.0000") {
              localDiscount += double.parse(oldPrice).floor();
            }
          }

          return Stack(
            children: [
              ListView.separated(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Divider(
                      color: wm.colorScheme.primaryContainer,
                      thickness: 1,
                    ),
                  );
                },
                itemCount: cartProducts.length + 1,
                itemBuilder: (context, index) {
                  if (index == cartProducts.length) {
                    return const SizedBox(
                      height: 140,
                    );
                  }

                  final liked = favIds.contains(cartProducts[index].product.id);
                  final productCount = cartProducts[index].count;
                  final product = cartProducts[index].product;

                  return CartProductCard(
                    isLiked: liked,
                    cartProduct: cartProducts[index],
                    onPlus: () {
                      wm.addToCart(product.id);
                    },
                    onMinus: productCount == 1
                        ? null
                        : () {
                            wm.updateCart(productCount - 1, product.id);
                          },
                    onFavorite: () {
                      wm.onFavorite(liked, product.id);
                    },
                    onDelete: () {
                      wm.deleteFromCart(product.id);
                    },
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _BottomPriceBar(
                  onTap: wm.onOrder,
                  price: cart.price,
                  discount:
                      localDiscount == 0 ? null : localDiscount.toString(),
                ),
              )
            ],
          );
        });
  }
}

class _BottomPriceBar extends StatelessWidget {
  const _BottomPriceBar({Key? key, required this.price, this.discount, required this.onTap})
      : super(key: key);

  final String price;
  final String? discount;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    final discountLocal = discount;
    return SizedBox(
      height: 140,
      child: Container(
        decoration: BoxDecoration(
          color: colors.background,
          border: Border.symmetric(
            horizontal: BorderSide(
              color: colors.primaryContainer,
              width: 1,
            ),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ИТОГО: ${double.parse(price).floor()} P",
                      style: textTheme.labelMedium?.copyWith(
                        color: colors.onBackground,
                        letterSpacing: 0.4,
                      ),
                    ),
                    if (discountLocal != null)
                      Text(
                        "Скидка : -$discountLocal P",
                        style: textTheme.bodyMedium,
                      ),
                  ],
                ),
              ),
              Expanded(child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  child: FilledButton(
                    onPressed: onTap,
                    child: Center(
                      child: Text(
                        "ОФОРМИТЬ ЗАКАЗ",
                        style: textTheme.labelMedium,
                      ),
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
