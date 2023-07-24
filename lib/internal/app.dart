import 'package:cool_shop/internal/asset/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation/app_router.dart';
import 'asset/fonts.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
                Fonts.labelMedium.copyWith(color: FiftyShadesOfGray.white)),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return FiftyShadesOfGray.darkGray;
              }

              return FiftyShadesOfGray.black;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),

            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: FiftyShadesOfGray.white,
          selectedIconTheme: IconThemeData(
            color: FiftyShadesOfGray.black,
          ),
          unselectedIconTheme: IconThemeData(
            color: FiftyShadesOfGray.unselectedIcon,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: Fonts.bodyLarge,
          bodySmall: Fonts.bodySmall,
          bodyMedium: Fonts.bodyMedium,
          titleMedium: Fonts.title,
          titleSmall: Fonts.grayHintText,
          labelSmall: Fonts.labelSmall,
          labelMedium: Fonts.labelMedium,
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          outline: FiftyShadesOfGray.darkDarkerGray,
          outlineVariant: FiftyShadesOfGray.unselectedIconButton,
          primary: FiftyShadesOfGray.black,
          onPrimary: FiftyShadesOfGray.white,
          secondary: FiftyShadesOfGray.black50,
          secondaryContainer: FiftyShadesOfGray.darkerGray,
          onSecondary: FiftyShadesOfGray.black,
          tertiary: FiftyShadesOfGray.countColor,
          error: FiftyShadesOfGray.red,
          onError: FiftyShadesOfGray.white,
          background: FiftyShadesOfGray.white,
          onBackground: FiftyShadesOfGray.black,
          surface: FiftyShadesOfGray.white,
          onSurface: FiftyShadesOfGray.black,
          onSurfaceVariant: FiftyShadesOfGray.oldPrice,
          primaryContainer: FiftyShadesOfGray.fieldColor,
          onPrimaryContainer: FiftyShadesOfGray.darkGray,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide.none,
          ),
          hintStyle: Fonts.labelSmall.copyWith(
            color: FiftyShadesOfGray.darkGray,
          ),
          helperStyle: Fonts.bodyLarge,
          fillColor: FiftyShadesOfGray.fieldColor,
          filled: true,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: Fonts.title.copyWith(
            color: FiftyShadesOfGray.black,
          ),
          color: FiftyShadesOfGray.white,
          elevation: 0,
        ),
        scaffoldBackgroundColor: FiftyShadesOfGray.white,
        tabBarTheme: const TabBarTheme(
          labelColor: FiftyShadesOfGray.black,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: FiftyShadesOfGray.black,
            ),
          ),
        ),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
