part of 'configs.dart';

abstract class AppProps {
  static final quick = 100.milliseconds;
  static final fast = 200.milliseconds;
  static final medium = 300.milliseconds;
  static final normal = 500.milliseconds;

  static const radiusTop = BorderRadius.vertical(top: Radius.circular(8));

  static final topRadiusDec = BoxDecoration(
    color: AppTheme.c.shadow,
    borderRadius: 8.top(),
  );

  static final gradient = LinearGradient(
    colors: [AppTheme.c.primary, AppTheme.c.secondary],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: const [0.1, 1.0],
  );

  /// It could be a static GETTER but since we have dynamic theme,
  /// we need to pass the context to get the correct color.
  static BoxDecoration cardDec(BuildContext context) {
    return BoxDecoration(
      color: AppTheme.c.cardBg,
      borderRadius: 8.radius(),
      boxShadow: [
        BoxShadow(
          color: AppTheme.c.shadow,
          blurRadius: 4,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}
