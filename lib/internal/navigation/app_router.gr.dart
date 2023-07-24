// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    CartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartTabPage(),
      );
    },
    FavoriteTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteTabPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteArgs>(
          orElse: () => const CatalogRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    AuthPart2Route.name: (routeData) {
      final args = routeData.argsAs<AuthPart2RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthPart2Widget(
          email: args.email,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ProfileMainRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileMainRouteArgs>(
          orElse: () => const ProfileMainRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileMainWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterWidget(
          emailPreview: args.emailPreview,
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    FavoriteRoute.name: (routeData) {
      final args = routeData.argsAs<FavoriteRouteArgs>(
          orElse: () => const FavoriteRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FavoriteWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    MainScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreenWidget(),
      );
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
  };
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartTabPage]
class CartTab extends PageRouteInfo<void> {
  const CartTab({List<PageRouteInfo>? children})
      : super(
          CartTab.name,
          initialChildren: children,
        );

  static const String name = 'CartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteTabPage]
class FavoriteTab extends PageRouteInfo<void> {
  const FavoriteTab({List<PageRouteInfo>? children})
      : super(
          FavoriteTab.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogWidget]
class CatalogRoute extends PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCatalogWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRoute.name,
          args: CatalogRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const PageInfo<CatalogRouteArgs> page =
      PageInfo<CatalogRouteArgs>(name);
}

class CatalogRouteArgs {
  const CatalogRouteArgs({
    this.key,
    this.wmFactory = defaultCatalogWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [AuthPart2Widget]
class AuthPart2Route extends PageRouteInfo<AuthPart2RouteArgs> {
  AuthPart2Route({
    required String email,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthPart2WidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthPart2Route.name,
          args: AuthPart2RouteArgs(
            email: email,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthPart2Route';

  static const PageInfo<AuthPart2RouteArgs> page =
      PageInfo<AuthPart2RouteArgs>(name);
}

class AuthPart2RouteArgs {
  const AuthPart2RouteArgs({
    required this.email,
    this.key,
    this.wmFactory = defaultAuthPart2WidgetModelFactory,
  });

  final String email;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthPart2RouteArgs{email: $email, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [AuthWidget]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<AuthRouteArgs> page = PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.wmFactory = defaultAuthWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfileMainWidget]
class ProfileMainRoute extends PageRouteInfo<ProfileMainRouteArgs> {
  ProfileMainRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfileMainWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileMainRoute.name,
          args: ProfileMainRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileMainRoute';

  static const PageInfo<ProfileMainRouteArgs> page =
      PageInfo<ProfileMainRouteArgs>(name);
}

class ProfileMainRouteArgs {
  const ProfileMainRouteArgs({
    this.key,
    this.wmFactory = defaultProfileMainWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileMainRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [RegisterWidget]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    String? emailPreview,
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultRegisterWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            emailPreview: emailPreview,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.emailPreview,
    this.key,
    this.wmFactory = defaultRegisterWidgetModelFactory,
  });

  final String? emailPreview;

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'RegisterRouteArgs{emailPreview: $emailPreview, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [FavoriteWidget]
class FavoriteRoute extends PageRouteInfo<FavoriteRouteArgs> {
  FavoriteRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultFavoriteWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FavoriteRoute.name,
          args: FavoriteRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const PageInfo<FavoriteRouteArgs> page =
      PageInfo<FavoriteRouteArgs>(name);
}

class FavoriteRouteArgs {
  const FavoriteRouteArgs({
    this.key,
    this.wmFactory = defaultFavoriteWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'FavoriteRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [MainScreenWidget]
class MainScreenRoute extends PageRouteInfo<void> {
  const MainScreenRoute({List<PageRouteInfo>? children})
      : super(
          MainScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartWidget]
class CartRoute extends PageRouteInfo<CartRouteArgs> {
  CartRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCartWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CartRoute.name,
          args: CartRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<CartRouteArgs> page = PageInfo<CartRouteArgs>(name);
}

class CartRouteArgs {
  const CartRouteArgs({
    this.key,
    this.wmFactory = defaultCartWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}
