part of '../configs.dart';

extension SuperAppText on AppText {
  /// Pass in color, majorly from [AppTheme.c] constructor to keep
  /// color dynamic and consistent.
  AppText cl(Color color) => AppText(
    data ?? '',
    style: style?.copyWith(color: color),
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    textDirection: textDirection,
    softWrap: softWrap,
  );

  /// Use 100 for FontWeight.w100, 200 for FontWeight.w200, etc.
  AppText w(int weight) {
    final fontWeight = switch (weight) {
      100 => FontWeight.w100,
      200 => FontWeight.w200,
      300 => FontWeight.w300,
      400 => FontWeight.w400,
      500 => FontWeight.w500,
      600 => FontWeight.w600,
      700 => FontWeight.w700,
      800 => FontWeight.w800,
      900 => FontWeight.w900,
      _ => FontWeight.normal,
    };

    return AppText(
      data ?? '',
      style: style?.copyWith(fontWeight: fontWeight),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      textDirection: textDirection,
      softWrap: softWrap,
    );
  }

  SelectableText selectable() => SelectableText(
    data ?? '',
    style: style,
    textAlign: textAlign,
    maxLines: maxLines,
    textDirection: textDirection,
  );
}
