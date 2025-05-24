import 'package:configs/configs.dart';
import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.label,
    this.onDeleted,
    this.color,
    this.margin,
    this.prefixIcon,
  });

  final String label;
  final Color? color;
  final IconData? prefixIcon;
  final EdgeInsetsGeometry? margin;

  final void Function()? onDeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? Space.z,
      padding: Space.sym(8, 4),
      decoration: BoxDecoration(
        color:
            color?.withValues(alpha: .15) ??
            AppTheme.c.primary.withValues(alpha: .15),
        borderRadius: 16.radius(),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...[
            Icon(prefixIcon, size: 16, color: color ?? AppTheme.c.primary),
            Space.x.t04,
          ],
          AppText.b2(label).cl(color ?? AppTheme.c.primary).w(700),
          if (onDeleted != null) ...[
            Space.x.t04,
            GestureDetector(
              onTap: onDeleted,
              child: Icon(
                Icons.close,
                color: color ?? AppTheme.c.primary,
                size: 16,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
