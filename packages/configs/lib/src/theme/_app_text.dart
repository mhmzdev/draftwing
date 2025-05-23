part of '../configs_base.dart';

/// [AppText] has named constructors for each text style.
/// It is a wrapper around the [Text] widget.
///
/// For quick colors and weight we've an extension over it [SuperAppText] that
/// lets you apply color by `cl()` and weight by `w()` so you don't need to use [TextStyle]
/// every time for these little changes.
///
/// However, you can use [TextStyle] for any different/unique text style you want.
class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AppText({super.key, required this.text, required this.style});

  AppText.h1(this.text, {super.key, TextStyle? style})
    : style = style ?? _AppTextStyle.h1;
  AppText.h2(this.text, {super.key, TextStyle? style})
    : style = style ?? _AppTextStyle.h2;
  AppText.h3(this.text, {super.key, TextStyle? style})
    : style = style ?? _AppTextStyle.h3;

  AppText.b1(this.text, {super.key, TextStyle? style})
    : style = style ?? _AppTextStyle.b1;
  AppText.b2(this.text, {super.key, TextStyle? style})
    : style = style ?? _AppTextStyle.b2;

  AppText.l1(this.text, {super.key, TextStyle? style})
    : style = style ?? _AppTextStyle.l1;

  @override
  Widget build(BuildContext context) => Text(text, style: style);
}
