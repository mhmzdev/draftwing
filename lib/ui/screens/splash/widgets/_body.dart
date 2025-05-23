part of '../splash.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Screen(
      keyboardHandler: true,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText.h1('Draft Wing'),
            AppText.h2('Draft Wing'),
            AppText.h3('Draft Wing'),
            AppText.b1('Draft Wing'),
            AppText.b2('Draft Wing'),
            AppText.l1('Draft Wing'),
          ],
        ),
      ),
    );
  }
}
