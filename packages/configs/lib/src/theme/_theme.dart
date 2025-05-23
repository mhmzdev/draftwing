part of '../configs_base.dart';

class AppTheme {
  // ignore: library_private_types_in_public_api
  static late _ThemeModel c;

  static void init(BuildContext context) {
    c =
        Theme.of(context).brightness == Brightness.light
            ? _lightTheme
            : _darkTheme;
  }
}
