part of 'configs_base.dart';

abstract class AppProps {
  static final quick = 100.milliseconds;
  static final fast = 200.milliseconds;
  static final medium = 300.milliseconds;
  static final normal = 500.milliseconds;

  static const radiusTop = BorderRadius.vertical(top: Radius.circular(10));

  static final topRadiusDec = BoxDecoration(
    color: AppTheme.c.shadow,
    borderRadius: 10.top(),
  );

  static final sectionShadow = [
    BoxShadow(
      blurRadius: 10,
      offset: const Offset(0, -1),
      color: Colors.black.withValues(alpha: .1),
    ),
    BoxShadow(
      blurRadius: 10,
      offset: const Offset(0, 1),
      color: Colors.black.withValues(alpha: .1),
    ),
  ];

  static final cardDec = BoxDecoration(
    color: AppTheme.c.cardBg,
    borderRadius: 16.radius(),
    boxShadow: [
      BoxShadow(
        color: AppTheme.c.shadow,
        blurRadius: 6,
        offset: const Offset(1, 1),
      ),
    ],
  );
}
