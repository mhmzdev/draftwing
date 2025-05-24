import 'package:configs/configs.dart';
import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.label,
    required this.onDeleted,
    this.borderColor,
    this.margin,
  });

  final String label;
  final void Function() onDeleted;
  final Color? borderColor;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? Space.z,
      child: Chip(
        elevation: 0,
        padding: Space.sym(2, 0),
        visualDensity: VisualDensity.compact,
        label: AppText.b1(label).cl(AppTheme.c.primary).w(700),
        backgroundColor: AppTheme.c.primary.withValues(alpha: .25),
        deleteIcon: Icon(Icons.close, color: AppTheme.c.primary, size: 20),
        onDeleted: onDeleted,
      ),
    );
  }
}
