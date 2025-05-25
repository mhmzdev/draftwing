part of '../medium_auth.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Screen(
      keyboardHandler: true,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: const AppLogoRoundPainter(),
              size: AppLogoRoundPainter.s(100),
            ),
            Space.y.t12,
            AppText.h1('DraftWing'),
            Space.y.t04,
            AppText.b2(
              'Your AI-powered writing assistant for Medium',
              textAlign: TextAlign.center,
            ),
            Space.y.t20,
            Container(
              margin: Space.a.t16,
              padding: Space.a.t16 + Space.v.t08,
              decoration: AppProps.cardDec(context),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText.h1('Connect to Medium'),
                  Space.y.t12,
                  AppText.b1(
                    'Authenticate your Medium account to start publishing your AI-generated articles',
                    textAlign: TextAlign.center,
                  ),
                  Space.y.t20,
                  CustomPaint(
                    size: MediumBrandingPainter.s(150),
                    painter: const MediumBrandingPainter(),
                  ),
                  Space.y.t20,
                  AppText.b2(
                    'Click the button below to securely connect your Medium account',
                    textAlign: TextAlign.center,
                  ),
                  Space.y.t20,
                  AppButton(
                    onPressed: () {},
                    label: 'Connect to Medium',
                    mainAxisSize: MainAxisSize.max,
                  ),
                  Space.y.t12,
                  AppText.b2(
                    "We'll redirect you to Medium to authorize the connection. Your credentials are never stored by us.",
                    textAlign: TextAlign.center,
                  ).cl(AppTheme.c.textDim),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
