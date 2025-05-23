part of '../splash.dart';

class _Body extends StatelessWidget {
  const _Body();

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: const FeatherPainter(),
              size: FeatherPainter.s(200),
            ),
          ],
        ),
      ),
    );
  }
}
