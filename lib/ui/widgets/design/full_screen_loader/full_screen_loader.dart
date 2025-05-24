import 'package:configs/configs.dart';
import 'package:draftwing/ui/painters/painters.dart';
import 'package:flutter/material.dart';

class FullScreenLoader extends StatefulWidget {
  const FullScreenLoader({
    super.key,
    this.loading = false,
    this.bg,
    this.loadingText = 'Loading...',
  });
  final bool loading;
  final Color? bg;
  final String loadingText;

  @override
  State<FullScreenLoader> createState() => _FullScreenLoaderState();
}

class _FullScreenLoaderState extends State<FullScreenLoader> {
  @override
  void initState() {
    mount = widget.loading;
    super.initState();
  }

  late bool mount;

  @override
  Widget build(BuildContext context) {
    if (!widget.loading) return const SizedBox.shrink();

    return Container(
      width: AppMedia.width,
      height: AppMedia.height,
      alignment: Alignment.center,
      color: widget.bg ?? Colors.black.withValues(alpha: 0.80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppIconLoader(),
          Space.y.t12,
          AppText.b1(widget.loadingText).cl(Colors.white).w(600),
        ],
      ),
    );
  }
}

class AppIconLoader extends StatelessWidget {
  final double radius;
  final Color? overlayColor;
  const AppIconLoader({super.key, this.radius = 60.0, this.overlayColor});

  @override
  Widget build(BuildContext context) {
    final stroke = radius * 0.078;
    final icon = radius * 0.7;

    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          painter: const AppLogoRoundPainter(),
          size: AppLogoRoundPainter.s(icon),
        ),
        SizedBox(
          height: radius - stroke,
          width: radius - stroke,
          child: CircularProgressIndicator(
            color: overlayColor ?? AppTheme.c.secondary,
            strokeWidth: stroke,
          ),
        ),
      ],
    );
  }
}
