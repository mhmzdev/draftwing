import 'package:configs/configs.dart';
import 'package:flutter/material.dart';

part '_enums.dart';
part '_model.dart';
part '_data.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.icon,
    this.label,
    this.frontColor,
    this.labelStyle,
    this.iconToEnd = false,
    required this.onPressed,
    this.disabledCallback,
    this.state = AppButtonState.plain,
    this.style = AppButtonStyle.primary,
    this.radius = AppButtonRadius.capsule,
    this.mainAxisSize = MainAxisSize.min,
    this.size = AppButtonSize.large,
    this.body,
    this.padding,
    this.margin,
  });

  final String? label;
  final TextStyle? labelStyle;

  final IconData? icon;
  final bool iconToEnd;
  final Color? frontColor;

  final VoidCallback onPressed;
  final VoidCallback? disabledCallback;
  final MainAxisSize mainAxisSize;

  final Widget? body;

  final AppButtonStyle style;
  final AppButtonState state;
  final AppButtonRadius radius;
  final AppButtonSize size;

  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final data = _mapPropsToData()[style]!;
    final borderRadius = _mapRadiusData()[radius];
    final textStyle = _mapSizeToFontSize()[size]!;

    final color = data.backgroundColor[state]!;
    final textColor = frontColor ?? data.text[state]!;

    final plain = state == AppButtonState.plain;
    final disabled = state == AppButtonState.disabled;
    final bordered = state == AppButtonState.bordered;

    final iconSize = 1.75 * textStyle.fontSize!;

    var boxShadows = <BoxShadow>[];
    if (!plain && !disabled && !bordered) {
      boxShadows = [
        BoxShadow(
          color: color.withValues(alpha: 0.5),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ];
    }

    final hasSmallSize = [
      AppButtonSize.tiny,
      AppButtonSize.mini,
      AppButtonSize.small,
    ].contains(size);

    final verticalSpace = hasSmallSize ? Space.v.t12 : Space.v.t16;

    return InkWell(
      onTap: !disabled ? onPressed : disabledCallback,
      child: Container(
        margin: margin,
        padding:
            padding ??
            (mainAxisSize == MainAxisSize.min ? Space.h.t16 : Space.h.t24) +
                verticalSpace,
        decoration: BoxDecoration(
          shape:
              label == null && icon != null
                  ? BoxShape.circle
                  : BoxShape.rectangle,
          border: Border.all(color: bordered ? textColor : color, width: 1),
          color: color,
          borderRadius: label == null ? null : borderRadius,
          boxShadow: boxShadows,
        ),
        child:
            body ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: mainAxisSize,
              children: [
                if (icon != null && !iconToEnd)
                  Icon(icon, size: iconSize, color: textColor),
                if (label != null && icon != null) Space.x.t08,
                if (label != null)
                  AppText.b1(
                    label!,
                    style:
                        labelStyle ??
                        TextStyle(
                          fontSize: textStyle.fontSize!,
                          color: textColor,
                        ),
                  ),
                if (label != null && icon != null && iconToEnd) Space.x.t08,
                if (icon != null && iconToEnd)
                  Icon(icon, size: iconSize, color: textColor),
              ],
            ),
      ),
    );
  }
}
