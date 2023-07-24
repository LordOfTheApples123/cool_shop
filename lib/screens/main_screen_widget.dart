import 'package:auto_route/auto_route.dart';
import 'package:cool_shop/internal/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      lazyLoad: false,
      routes: const [
        CatalogTab(),
        FavoriteTab(),
        CartTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return  BottomNavigationBar(
          type: BottomNavigationBarType.shifting,

            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(

                label: "catalog",
                icon: Column(
                    children: [
                      Icon(
                        Icons.window,
                      ),
                      Text("Каталог"),
                    ],
                  ),

              ),
              BottomNavigationBarItem(
                label: "fav",
                icon: Column(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                    ),

                    Text("Избранное"),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                label: "cart",
                icon: Column(
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                    ),
                    Text("Корзина"),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                label: "profile",
                icon: Column(
                  children: [
                    Icon(
                      Icons.person_outline_rounded,
                    ),

                    Text("Профиль"),
                  ],
                ),
              ),
            ],
          );
      },
    );
  }
}
