part of '../splash.dart';

class TrailPainter extends CustomPainter {
  final List<Offset> trailPoints;

  TrailPainter(this.trailPoints);

  @override
  void paint(Canvas canvas, Size size) {
    if (trailPoints.length < 2) return;

    final paint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3.0
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round;

    final centerX = size.width * 0.5;
    final centerY = size.height * 0.5;

    for (var i = 0; i < trailPoints.length; i++) {
      final point = Offset(
        centerX + (size.width * trailPoints[i].dx),
        centerY + (size.height * trailPoints[i].dy),
      );

      final opacity = (i / trailPoints.length).clamp(0.2, 1.0);
      paint.color = Colors.white.withValues(alpha: opacity);

      if (i > 0) {
        final prevPoint = Offset(
          centerX + (size.width * trailPoints[i - 1].dx),
          centerY + (size.height * trailPoints[i - 1].dy),
        );

        canvas.drawLine(prevPoint, point, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant TrailPainter oldDelegate) {
    return oldDelegate.trailPoints.length != trailPoints.length;
  }
}
