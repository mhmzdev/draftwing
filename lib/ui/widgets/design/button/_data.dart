part of 'button.dart';

Map<AppButtonStyle, _AppButtonModel> _mapPropsToData() {
  return {
    AppButtonStyle.primary: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.appBg,
        AppButtonState.plain: AppTheme.c.appBg,
        AppButtonState.bordered: AppTheme.c.secondary,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: Colors.transparent,
        AppButtonState.elevated: AppTheme.c.secondary,
        AppButtonState.plain: AppTheme.c.secondary,
        AppButtonState.disabled: AppTheme.c.textDim,
      },
    ),
    AppButtonStyle.danger: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.appBg,
        AppButtonState.plain: AppTheme.c.appBg,
        AppButtonState.bordered: AppTheme.c.error,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.elevated: AppTheme.c.error,
        AppButtonState.plain: AppTheme.c.error,
        AppButtonState.bordered: Colors.transparent,
        AppButtonState.disabled: AppTheme.c.textDim,
      },
    ),
    AppButtonStyle.success: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.appBg,
        AppButtonState.plain: AppTheme.c.appBg,
        AppButtonState.bordered: AppTheme.c.success,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: Colors.transparent,
        AppButtonState.elevated: AppTheme.c.success,
        AppButtonState.plain: AppTheme.c.success,
        AppButtonState.disabled: AppTheme.c.textDim,
      },
    ),
    AppButtonStyle.warning: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.appBg,
        AppButtonState.plain: AppTheme.c.appBg,
        AppButtonState.bordered: AppTheme.c.warning,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: Colors.transparent,
        AppButtonState.elevated: AppTheme.c.warning,
        AppButtonState.plain: AppTheme.c.warning,
        AppButtonState.disabled: AppTheme.c.textDim,
      },
    ),
    AppButtonStyle.info: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.appBg,
        AppButtonState.plain: AppTheme.c.appBg,
        AppButtonState.bordered: AppTheme.c.info,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: Colors.transparent,
        AppButtonState.elevated: AppTheme.c.info,
        AppButtonState.plain: AppTheme.c.info,
        AppButtonState.disabled: AppTheme.c.textDim,
      },
    ),
    AppButtonStyle.grey: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.appBg,
        AppButtonState.plain: AppTheme.c.appBg,
        AppButtonState.bordered: AppTheme.c.textBody,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: Colors.transparent,
        AppButtonState.elevated: AppTheme.c.textBody,
        AppButtonState.plain: AppTheme.c.textBody,
        AppButtonState.disabled: AppTheme.c.textDim,
      },
    ),
    AppButtonStyle.white: _AppButtonModel(
      text: {
        AppButtonState.elevated: AppTheme.c.appBg,
        AppButtonState.plain: AppTheme.c.textBody,
        AppButtonState.bordered: AppTheme.c.cardBg,
        AppButtonState.disabled: AppTheme.c.cardBg,
      },
      backgroundColor: {
        AppButtonState.bordered: Colors.transparent,
        AppButtonState.elevated: AppTheme.c.cardBg,
        AppButtonState.plain: AppTheme.c.cardBg,
        AppButtonState.disabled: AppTheme.c.textDim,
      },
    ),
  };
}

Map<AppButtonRadius, BorderRadius> _mapRadiusData() {
  return {
    AppButtonRadius.less: 10.radius(),
    AppButtonRadius.medium: 15.radius(),
    AppButtonRadius.round: 20.radius(),
    AppButtonRadius.capsule: 360.radius(),
  };
}

Map<AppButtonSize, TextStyle> _mapSizeToFontSize() {
  return {
    AppButtonSize.large: AppText.b1('').style,
    AppButtonSize.medium: AppText.b1('').style,
    AppButtonSize.small: AppText.b2('').style,
    AppButtonSize.mini: AppText.b2('').style,
    AppButtonSize.tiny: AppText.l1('').style,
  };
}
