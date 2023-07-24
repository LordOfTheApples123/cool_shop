import 'package:flutter/material.dart';

abstract interface class IThemeProvider {
  ThemeData get theme;

  TextTheme get textTheme;

  ColorScheme get colorScheme;
}

mixin ThemeProvider {
  BuildContext get context;

  ColorScheme get colorScheme => Theme.of(context).colorScheme;

  TextTheme get textTheme => Theme.of(context).textTheme;

  ThemeData get theme => Theme.of(context);
}
