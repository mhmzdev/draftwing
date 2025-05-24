part of '../settings.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final screenState = _ScreenState.s(context, true);
    final app = AppProvider.s(context, true);
    final articleCubit = ArticleCubit.c(context);

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
                decoration: AppProps.cardDec,
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
                    AppText.b1('Theme and display options coming soon...'),
                  ],
                ),
              ),
              Space.y.t20,
              Container(
                padding: Space.a.t16,
                decoration: AppProps.cardDec,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Iconsax.document_copy, color: AppTheme.c.primary),
                        Space.x.t04,
                        AppText.h2('Content Control'),
                      ],
                    ),
                    SwitchListTile(
                      dense: true,
                      value: app.fetchPublished,
                      onChanged: (value) {
                        app.setFetchPublished(value);
                        if (value) {
                          articleCubit.published(force: true);
                        } else {
                          articleCubit.resetPublished();
                        }
                      },
                      visualDensity: VisualDensity.compact,
                      title: AppText.b1('Published articles').w(600),
                      subtitle: AppText.b2(
                        'Show published articles in the drafts list',
                      ),
                      contentPadding: Space.z,
                    ),
                  ],
                ),
              ),
              Space.y.t20,
              Container(
                padding: Space.a.t16,
                decoration: AppProps.cardDec,
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
                          TextSpan(text: '0.2.5', style: AppText.b1('').style),
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
                          TextSpan(text: '234', style: AppText.b1('').style),
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
