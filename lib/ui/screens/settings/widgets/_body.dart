part of '../settings.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      padding: Space.a.t16,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CoreHeader(
              leading: GradientIcon(Iconsax.setting_2, size: SpaceToken.t32),
              title: 'Settings',
              subTitle: 'Customize your app experience',
            ),
            Space.y.t20,
          ],
        ),
      ),
    );
  }
}
