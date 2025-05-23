part of '../home.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);

    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      formKey: screenState.formKey,
      initialFormValue: _FormData.initialValues(),
      child: SafeArea(
        child: ScrollColumnExpandable(
          padding: Space.a.t16,
          children: [
            Row(
              children: [
                CustomPaint(
                  painter: const AppLogoRoundPainter(),
                  size: AppLogoRoundPainter.s(42),
                ),
                Space.x.t08,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.h1('Draft Wing'),
                    AppText.b1('Create amazing drafts with AI'),
                  ],
                ),
              ],
            ),
            Space.y.t20,
            const _Form(),
          ],
        ),
      ),
    );
  }
}
