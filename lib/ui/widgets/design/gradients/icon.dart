import 'package:draftwing/configs/configs.dart';
import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Gradient? gradient;

  const GradientIcon(this.icon, {super.key, this.size = 24.0, this.gradient});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final defaultGradient = LinearGradient(
      colors: [AppTheme.c.primary, AppTheme.c.secondary],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    );

    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return (gradient ?? defaultGradient).createShader(bounds);
      },
      child: Icon(icon, size: size, color: Colors.white),
    );
  }
}
