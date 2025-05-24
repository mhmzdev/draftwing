part of 'button.dart';

Map<AppButtonStyle, _AppButtonModel> _mapPropsToData() {
  return {
    AppButtonStyle.primary: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.cardBg,
        AppButtonState.plain: AppTheme.c.cardBg,
        AppButtonState.bordered: AppTheme.c.primary,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: [Colors.transparent, Colors.transparent],
        AppButtonState.elevated: [AppTheme.c.primary, AppTheme.c.secondary],
        AppButtonState.plain: [AppTheme.c.primary, AppTheme.c.secondary],
        AppButtonState.disabled: [AppTheme.c.textDim, AppTheme.c.textDim],
      },
    ),
    AppButtonStyle.danger: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.cardBg,
        AppButtonState.plain: AppTheme.c.cardBg,
        AppButtonState.bordered: AppTheme.c.error,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.elevated: [AppTheme.c.error, AppTheme.c.error],
        AppButtonState.plain: [AppTheme.c.error, AppTheme.c.error],
        AppButtonState.bordered: [Colors.transparent, Colors.transparent],
        AppButtonState.disabled: [AppTheme.c.textDim, AppTheme.c.textDim],
      },
    ),
    AppButtonStyle.success: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.cardBg,
        AppButtonState.plain: AppTheme.c.cardBg,
        AppButtonState.bordered: AppTheme.c.success,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: [Colors.transparent, Colors.transparent],
        AppButtonState.elevated: [AppTheme.c.success, AppTheme.c.success],
        AppButtonState.plain: [AppTheme.c.success, AppTheme.c.success],
        AppButtonState.disabled: [AppTheme.c.textDim, AppTheme.c.textDim],
      },
    ),
  };
}

Map<AppButtonRadius, BorderRadius> _mapRadiusData() {
  return {
    AppButtonRadius.less: 4.radius(),
    AppButtonRadius.medium: 8.radius(),
    AppButtonRadius.round: 12.radius(),
    AppButtonRadius.capsule: 360.radius(),
  };
}

Map<AppButtonSize, TextStyle> _mapSizeToFontSize() {
  return {
    AppButtonSize.large: AppText.b1('').style!,
    AppButtonSize.medium: AppText.b1('').style!,
    AppButtonSize.small: AppText.b2('').style!,
    AppButtonSize.mini: AppText.b2('').style!,
    AppButtonSize.tiny: AppText.l1('').style!,
  };
}
