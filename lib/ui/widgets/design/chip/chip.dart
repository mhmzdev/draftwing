import 'package:configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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
        padding: Space.a.t04,
        visualDensity: VisualDensity.compact,
        label: AppText.b1(label),
        backgroundColor: AppTheme.c.cardBg,
        side: BorderSide(color: borderColor ?? AppTheme.c.secondary, width: 1),
        deleteIcon: Icon(
          Iconsax.close_circle,
          color: AppTheme.c.error,
          size: 20,
        ),
        onDeleted: onDeleted,
      ),
    );
  }
}
