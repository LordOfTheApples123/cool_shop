import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/screens/export.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Widget,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainScreenRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: CatalogTab.page,
              children: [AutoRoute(page: CatalogRoute.page, initial: true)],
            ),
            AutoRoute(
              page: FavoriteTab.page,
              children: [AutoRoute(page: FavoriteRoute.page, initial: true)],
            ),
            AutoRoute(
              page: CartTab.page,
              children: [AutoRoute(page: CartRoute.page, initial: true)],
            ),
            AutoRoute(

              page: ProfileTab.page,
              children: [
                AutoRoute(
                  page: ProfileMainRoute.page,
                  initial: true,
                ),
                AutoRoute(page: AuthRoute.page),
                AutoRoute(page: RegisterRoute.page),
                AutoRoute(page: AuthPart2Route.page),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'FavoriteTab')
class FavoriteTabPage extends AutoRouter {
  const FavoriteTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
