part of '../configs_base.dart';

class _ThemeModel {
  final Color primary;
  final Color secondary;

  final Color cardBg;
  final Color appBg;
  final Color shadow;
  final Color lightStroke;

  final Color textHeading;
  final Color textBody;
  final Color textDim;

  final Color info;
  final Color error;
  final Color success;
  final Color warning;

  const _ThemeModel({
    required this.primary,
    required this.secondary,
    required this.cardBg,
    required this.appBg,
    required this.shadow,
    required this.textHeading,
    required this.textBody,
    required this.textDim,
    required this.info,
    required this.error,
    required this.success,
    required this.warning,
    required this.lightStroke,
  });

  _ThemeModel copyWith({
    Color? primary,
    Color? secondary,
    Color? cardBg,
    Color? appBg,
    Color? shadow,
    Color? textHeading,
    Color? textBody,
    Color? textDim,
    Color? info,
    Color? error,
    Color? success,
    Color? warning,
    Color? lightStroke,
  }) {
    return _ThemeModel(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      cardBg: cardBg ?? this.cardBg,
      appBg: appBg ?? this.appBg,
      shadow: shadow ?? this.shadow,
      textHeading: textHeading ?? this.textHeading,
      textBody: textBody ?? this.textBody,
      textDim: textDim ?? this.textDim,
      info: info ?? this.info,
      error: error ?? this.error,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      lightStroke: lightStroke ?? this.lightStroke,
    );
  }
}
