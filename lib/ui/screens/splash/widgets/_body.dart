part of '../splash.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: 1500.milliseconds, vsync: this);

    _rotationAnimation = Tween<double>(
      begin: -0.1,
      end: 0.1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();

    _controller.addListener(() {
      if (_controller.isCompleted) {
        AppRoutes.home.pushReplace(context);
      }
    });
  }

  List<Offset> get _generateTrailPoints {
    final points = <Offset>[];
    final currentProgress = _controller.value;

    for (var i = 25; i <= (currentProgress * 100).floor(); i++) {
      final progress = i / 100.0;
      final sizzleY = math.sin(progress * math.pi * 8) * 0.03;
      final rotation =
          _rotationAnimation.value * math.sin(progress * math.pi * 6.5);

      final featherTipOffset = _calculateFeatherTipOffset(rotation, progress);

      final currentPosition = Offset(
        (progress - 0.5) * 0.6 + featherTipOffset.dx,
        sizzleY + featherTipOffset.dy,
      );

      points.add(currentPosition);
    }

    return points;
  }

  Offset _calculateFeatherTipOffset(double rotation, double progress) {
    const tipOffsetFromCenter = 80.0;

    final tipX = math.sin(rotation) * tipOffsetFromCenter;
    final tipY = math.cos(rotation) * tipOffsetFromCenter;

    return Offset(
      tipX / MediaQuery.of(context).size.width,
      tipY / MediaQuery.of(context).size.height,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      keyboardHandler: true,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppProps.gradient.colors,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: const [0.3, 0.9],
          ),
        ),
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return CustomPaint(
                  painter: TrailPainter(_generateTrailPoints),
                  size: MediaQuery.of(context).size,
                );
              },
            ),

            Center(
              child: CustomPaint(
                painter: const FeatherPainter(),
                size: FeatherPainter.s(200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
