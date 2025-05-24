part of '../profile.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  double bottomBarHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      bottomBarHeightChanged: (height) {
        setState(() {
          bottomBarHeight = height;
        });
      },
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CoreHeader(
                padding: Space.a.t16,
                leading: GradientIcon(Iconsax.user_copy, size: SpaceToken.t32),
                title: 'Profile',
                subTitle: 'Your writing journey',
              ),
              Space.y.t04,
              Container(
                margin: Space.a.t16,
                padding: Space.a.t16,
                decoration: AppProps.cardDec,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: AppProps.gradient,
                      ),
                      alignment: Alignment.center,
                      child: AppText.h1('JD').cl(Colors.white),
                    ),
                    Space.y.t16,
                    AppText.h2('John Doe'),
                    Space.y.t04,
                    AppText.b1('john_writes'),
                    Space.y.t16,
                    AppButton(
                      mainAxisSize: MainAxisSize.max,
                      onPressed: () {},
                      icon: Icons.open_in_new_rounded,
                      label: 'Edit Profile',
                      state: AppButtonState.bordered,
                    ),
                  ],
                ),
              ),
              Space.y.t04,
              GridView.count(
                padding: Space.h.t16,
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                mainAxisSpacing: SpaceToken.t16,
                crossAxisSpacing: SpaceToken.t16,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ...[
                    {
                      'label': 'Articles Created',
                      'icon': Iconsax.document_text_copy,
                      'value': '12',
                    },
                    {
                      'label': 'Published',
                      'icon': Iconsax.trend_up_copy,
                      'value': '8',
                    },
                    {
                      'label': 'Days Active',
                      'icon': Iconsax.calendar_2_copy,
                      'value': '12',
                    },
                    {
                      'label': 'Medium Followers',
                      'icon': Iconsax.people_copy,
                      'value': '345',
                    },
                  ].map(
                    (stat) => _StatsCard(
                      label: stat['label'] as String,
                      icon: stat['icon'] as IconData,
                      value: stat['value'] as String,
                    ),
                  ),
                ],
              ),
              Space.y.t04,
              Container(
                margin: Space.a.t16,
                padding: Space.a.t16,
                decoration: AppProps.cardDec,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.h1('About'),
                    Space.y.t12,
                    AppText.b1(
                      'Passionate writer exploring the realms of creativity through words. Always seeking new stories to tell and adventures to share.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: bottomBarHeight),
            ],
          ),
        ),
      ),
    );
  }
}
