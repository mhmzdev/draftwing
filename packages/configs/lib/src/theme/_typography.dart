part of '../configs_base.dart';

/// [_AppTextStyle] is a class that contains the text styles for the app.
/// These are not being used directly, but are being used to create the [AppText] widget.
class _AppTextStyle {
  static late TextStyleRef h1;
  static late TextStyleRef h2;
  static late TextStyleRef h3;

  static late TextStyleRef b1;
  static late TextStyleRef b2;

  static late TextStyleRef l1;

  static void init() {
    const base = TextStyle(fontFamily: FontFamily.poppins);

    h1 = TextStyleRef(
      base.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
      id: 'h1',
    );
    h2 = TextStyleRef(
      base.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
      id: 'h2',
    );
    h3 = TextStyleRef(
      base.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
      id: 'h3',
    );

    //
    b1 = TextStyleRef(base.copyWith(fontSize: 14), id: 'b1');
    b2 = TextStyleRef(base.copyWith(fontSize: 12), id: 'b2');

    //
    l1 = TextStyleRef(base.copyWith(fontSize: 10), id: 'l1');
  }
}
