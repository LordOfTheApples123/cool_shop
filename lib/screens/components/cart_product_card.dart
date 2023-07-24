import 'package:cool_shop/data/model/cart_product/cart_product.dart';
import 'package:cool_shop/screens/components/cached_image_with_placeholder.dart';
import 'package:cool_shop/screens/components/square_button.dart';
import 'package:flutter/material.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    this.height = 100,
    required this.cartProduct,
    this.onPlus,
    this.onMinus,
    this.isLiked = false,
    this.onFavorite,
    this.onDelete,
  });

  final double height;
  final CartProduct cartProduct;
  final VoidCallback? onPlus;
  final VoidCallback? onMinus;
  final VoidCallback? onFavorite;
  final VoidCallback? onDelete;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    final product = cartProduct.product;
    final count = cartProduct.count;
    final price = product.price ?? "-1";
    final intPrice = double.parse(price).floor();
    final oldPrice = product.oldPrice;

    final selectedIcon = Icon(
      Icons.favorite,
      size: 20,
      color: colors.error,
    );
    final base = Icon(
      Icons.favorite_border_outlined,
      size: 20,
      color: colors.outline,
    );

    return SizedBox(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: CachedNetworkImageWithPlaceHolder(
                fit: BoxFit.cover, picture: product.picture),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name ?? "чё",
                      style: textTheme.bodyMedium,
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              splashRadius: 15,
                              alignment: Alignment.center,
                              padding: EdgeInsets.zero,

                              onPressed: onFavorite,
                              icon: isLiked ? selectedIcon : base),
                          IconButton(
                            splashRadius: 15,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(left: 20),
                            onPressed: onDelete,
                            icon: Icon(
                              Icons.close,
                              color: colors.onBackground,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${intPrice ?? "0"} Р",
                          style: textTheme.bodyLarge,
                        ),
                        //всё ещё не понял что приходит с бэка
                        if (oldPrice != null &&
                            oldPrice.isNotEmpty &&
                            oldPrice != "0.0000")
                          Text(
                            "$oldPrice Р",
                            style: textTheme.bodySmall?.copyWith(
                              color: colors.onSurfaceVariant,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SquareButton(
                          onTap: onMinus,
                          icon: Icon(
                            Icons.remove,
                            size: 15,
                            color: colors.background,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            count.toString(),
                            style: textTheme.bodyLarge
                                ?.copyWith(color: colors.tertiary),
                          ),
                        ),
                        SquareButton(
                          onTap: onPlus,
                          icon: Icon(
                            Icons.add,
                            size: 15,
                            color: colors.background,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
