part of '../configs_base.dart';

final materialLightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: false,
  primaryColor: _lightTheme.primary,
  primaryColorDark: _lightTheme.primary,
  colorScheme: ColorScheme.light(
    primary: _lightTheme.primary,
    secondary: _lightTheme.secondary,
    surface: _lightTheme.appBg,
    error: _lightTheme.error,
    onPrimary: _lightTheme.primary,
    onError: _lightTheme.error,
  ),
  scaffoldBackgroundColor: _lightTheme.appBg,
  textTheme: TextTheme(
    displayLarge: TextStyle(color: _lightTheme.textHeading),
    displayMedium: TextStyle(color: _lightTheme.textHeading),
    displaySmall: TextStyle(color: _lightTheme.textHeading),
    headlineLarge: TextStyle(color: _lightTheme.textHeading),
    headlineMedium: TextStyle(color: _lightTheme.textHeading),
    headlineSmall: TextStyle(color: _lightTheme.textHeading),
    titleLarge: TextStyle(color: _lightTheme.textHeading),
    titleMedium: TextStyle(color: _lightTheme.textHeading),
    titleSmall: TextStyle(color: _lightTheme.textHeading),
    bodyLarge: TextStyle(color: _lightTheme.textBody),
    bodyMedium: TextStyle(color: _lightTheme.textBody),
    bodySmall: TextStyle(color: _lightTheme.textBody),
    labelLarge: TextStyle(color: _lightTheme.textDim),
    labelMedium: TextStyle(color: _lightTheme.textDim),
    labelSmall: TextStyle(color: _lightTheme.textDim),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: _lightTheme.secondary),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: _lightTheme.appBg,
  ),
);

final materialDarkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: false,
  primaryColor: _darkTheme.primary,
  primaryColorDark: _darkTheme.primary,
  colorScheme: ColorScheme.dark(
    primary: _darkTheme.primary,
    secondary: _darkTheme.secondary,
    surface: _darkTheme.appBg,
    error: _darkTheme.error,
    onError: _darkTheme.error,
  ),
  scaffoldBackgroundColor: _darkTheme.appBg,
  textTheme: TextTheme(
    displayLarge: TextStyle(color: _darkTheme.textHeading),
    displayMedium: TextStyle(color: _darkTheme.textHeading),
    displaySmall: TextStyle(color: _darkTheme.textHeading),
    headlineLarge: TextStyle(color: _darkTheme.textHeading),
    headlineMedium: TextStyle(color: _darkTheme.textHeading),
    headlineSmall: TextStyle(color: _darkTheme.textHeading),
    titleLarge: TextStyle(color: _darkTheme.textHeading),
    titleMedium: TextStyle(color: _darkTheme.textHeading),
    titleSmall: TextStyle(color: _darkTheme.textHeading),
    bodyLarge: TextStyle(color: _darkTheme.textBody),
    bodyMedium: TextStyle(color: _darkTheme.textBody),
    bodySmall: TextStyle(color: _darkTheme.textBody),
    labelLarge: TextStyle(color: _darkTheme.textDim),
    labelMedium: TextStyle(color: _darkTheme.textDim),
    labelSmall: TextStyle(color: _darkTheme.textDim),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: _darkTheme.secondary),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: _darkTheme.appBg,
  ),
);
