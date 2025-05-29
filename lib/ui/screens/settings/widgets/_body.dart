part of '../settings.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final screenState = _ScreenState.s(context, true);
    final app = AppProvider.s(context, true);

    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      bottomBarHeightChanged: (height) => screenState.rebuild(),
      child: SafeArea(
        child: Padding(
          padding: Space.a.t16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CoreHeader(
                leading: GradientIcon(Iconsax.setting_2, size: SpaceToken.t32),
                title: 'Settings',
                subTitle: 'Customize your app experience',
              ),
              Space.y.t20,
              Container(
                padding: Space.a.t16,
                decoration: AppProps.cardDec(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.color_lens_outlined,
                          color: AppTheme.c.primary,
                        ),
                        Space.x.t04,
                        AppText.h2('Appearance'),
                      ],
                    ),
                    Space.y.t12,
                    SwitchListTile(
                      value: app.themeMode == ThemeMode.dark,
                      onChanged: (value) {
                        if (value) {
                          app.setTheme(ThemeMode.dark);
                        } else {
                          app.setTheme(ThemeMode.light);
                        }
                      },
                      title: AppText.b1('Dark Mode'),
                      activeColor: AppTheme.c.primary,
                      contentPadding: Space.z,
                      dense: true,
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ),
              ),
              Space.y.t20,
              Container(
                padding: Space.a.t16,
                decoration: AppProps.cardDec(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Iconsax.info_circle_copy,
                          color: AppTheme.c.primary,
                        ),
                        Space.x.t04,
                        AppText.h2('About'),
                      ],
                    ),
                    Space.y.t12,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Version: ',
                            style: AppText.b1('').w(600).style!,
                          ),
                          TextSpan(
                            text: AppVersion.ins.version,
                            style: AppText.b1('').style,
                          ),
                        ],
                      ),
                    ),
                    Space.y.t08,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Build Number: ',
                            style: AppText.b1('').w(600).style!,
                          ),
                          TextSpan(
                            text: AppVersion.ins.buildNumber,
                            style: AppText.b1('').style,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
