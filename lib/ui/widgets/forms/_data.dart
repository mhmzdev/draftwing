part of 'form.dart';

Map<AppFormState, _AppFormTheme> _mapPropsToData() {
  return {
    AppFormState.def: _AppFormTheme(
      text: AppTheme.c.textBody,
      label: AppTheme.c.textDim,
      helper: AppTheme.c.textDim,
      placeholder: AppTheme.c.textDim.withValues(alpha: 0.3),
      border: AppTheme.c.lightStroke,
      surface: AppTheme.c.cardBg,
      error: AppTheme.c.error,
    ),
    AppFormState.pressed: _AppFormTheme(
      text: AppTheme.c.textBody,
      label: AppTheme.c.textBody,
      helper: AppTheme.c.textDim,
      placeholder: AppTheme.c.textDim.withValues(alpha: 0.3),
      border: AppTheme.c.secondary,
      surface: AppTheme.c.cardBg,
      error: AppTheme.c.error,
    ),
    AppFormState.disabled: _AppFormTheme(
      text: AppTheme.c.textDim,
      label: AppTheme.c.textDim,
      helper: AppTheme.c.textDim,
      placeholder: AppTheme.c.textDim.withValues(alpha: 0.3),
      border: AppTheme.c.textDim,
      surface: AppTheme.c.lightStroke,
      error: AppTheme.c.error,
    ),
  };
}
