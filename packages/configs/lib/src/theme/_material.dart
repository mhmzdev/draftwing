part of '../configs_base.dart';

final materialLightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: false,
  primaryColor: _lightTheme.primary,
  primaryColorDark: _lightTheme.primary,
  colorScheme: ColorScheme.light(
    primary: _lightTheme.primary,
    secondary: _lightTheme.primary,
    surface: _lightTheme.appBg,
    error: _lightTheme.error,
    onPrimary: _lightTheme.primary,
    // onSecondary: _lightTheme.text,
    // onSurface: _lightTheme.text,
    // onBackground: _lightTheme.text,
    // onError: _lightTheme.text,
  ),
  // highlightColor: _lightTheme.text.withOpacity(0.1),
  scaffoldBackgroundColor: _lightTheme.appBg,
  textTheme: TextTheme(
    bodySmall: TextStyle(color: _lightTheme.textDim),
    bodyMedium: TextStyle(color: _lightTheme.textBody),
    bodyLarge: TextStyle(color: _lightTheme.textHeading),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: _lightTheme.secondary),
  ),
);

final materialDarkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: false,
  primaryColor: _darkTheme.primary,
  primaryColorDark: _darkTheme.primary,
  colorScheme: ColorScheme.dark(
    primary: _darkTheme.primary,
    secondary: _darkTheme.primary,
    surface: _darkTheme.appBg,
    // background: _darkTheme.background,
    error: _darkTheme.error,
    // onPrimary: _darkTheme.primaryDark,
    // onSecondary: _darkTheme.text,
    // onSurface: _darkTheme.text,
    // onBackground: _darkTheme.text,
    // onError: _darkTheme.text,
  ),
  // highlightColor: _darkTheme.text.withOpacity(0.1),
  scaffoldBackgroundColor: _darkTheme.appBg,
  textTheme: TextTheme(
    bodySmall: TextStyle(color: _darkTheme.textDim),
    bodyMedium: TextStyle(color: _darkTheme.textBody),
    bodyLarge: TextStyle(color: _darkTheme.textHeading),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: _darkTheme.secondary),
  ),
);
