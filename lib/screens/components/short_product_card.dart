import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/screens/components/cached_image_with_placeholder.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget(
      {super.key,
      required this.product,
      required this.selected,
      required this.onFavourite,
      required this.onBasket});

  final Product product;

  final bool selected;
  final VoidCallback? onFavourite;
  final VoidCallback? onBasket;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    final selectedIcon = Icon(
      Icons.favorite,
      size: 30,
      color: colors.error,
    );
    final base = Icon(
      Icons.favorite_border_outlined,
      size: 30,
      color: colors.outline,
    );
    //oldPrice всё равно приходит не null, а 0, так что реюзаю
    final price = double.parse(product.price ?? "0").floor();
    final oldPrice = double.parse(product.oldPrice ?? "0").floor();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CachedNetworkImageWithPlaceHolder(
                  fit: BoxFit.fitWidth, picture: product.picture),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  icon: selected ? selectedIcon : base,
                  onPressed: onFavourite,
                ),
              ),
            ],
          ),
          Text(
            product.name ?? "чё",
            style: textTheme.bodyMedium,
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$price ₽",
                    style: textTheme.bodyLarge,
                  ),
                  if (oldPrice != 0)
                    Text(
                      "$oldPrice ₽",
                      style: textTheme.bodySmall
                          ?.copyWith(decoration: TextDecoration.lineThrough),
                    ),
                ],
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: colors.primary,
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    weight: 0.1,
                    color: colors.onPrimary,
                    size: 25,
                  ),
                  onPressed: onBasket,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
