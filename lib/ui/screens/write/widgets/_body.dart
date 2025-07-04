part of '../write.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  double bottomBarHeight = 100;

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);

    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      formKey: screenState.formKey,
      initialFormValue: _FormData.initialValues(),
      resizeToAvoidBottomInset: true,
      bottomBarHeightChanged: (height) {
        setState(() {
          bottomBarHeight = height;
        });
      },
      overlayBuilders: const [_SaveDraftListener()],
      child: SafeArea(
        child: ScrollColumnExpandable(
          padding: Space.a.t16,
          children: [
            CoreHeader(
              leading: CustomPaint(
                painter: const AppLogoRoundPainter(),
                size: AppLogoRoundPainter.s(42),
              ),
              title: 'Draft Wing',
              subTitle: 'Create amazing drafts with AI',
              trailing: const DraftGuidelinesButton(),
            ),
            Space.y.t20,
            const _Form(),
            Space.y.t12,
            SizedBox(height: bottomBarHeight),
          ],
        ),
      ),
    );
  }
}
