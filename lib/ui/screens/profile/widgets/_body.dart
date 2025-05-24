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
    final userCubit = UserCubit.c(context);
    final userState = userCubit.state;
    final user = userState.me.data ?? userState.user!;

    final articleCubit = ArticleCubit.c(context, true);
    final articleState = articleCubit.state;
    final draftsList = articleState.draftsList;
    final publishedList = articleState.publishedList;
    final list = [...draftsList, ...publishedList];

    final app = AppProvider.s(context, true);
    final fetchPublished = app.fetchPublished;

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
                      child: AppText.h1(
                        user.name
                            .split(' ')
                            .map((e) => e[0])
                            .join('')
                            .toUpperCase(),
                      ).cl(Colors.white),
                    ),
                    Space.y.t16,
                    AppText.h2(user.name),
                    Space.y.t04,
                    AppText.b1('@${user.username}'),
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
                      'label': fetchPublished ? 'Articles Created' : 'Drafts',
                      'icon': Iconsax.document_text_copy,
                      'value': list.length.toString(),
                    },
                    {
                      'label':
                          fetchPublished ? 'Published' : 'Enable from settings',
                      'icon': Iconsax.trend_up_copy,
                      'value':
                          fetchPublished
                              ? publishedList.length.toString()
                              : 'Published',
                    },
                    {
                      'label': 'Member Since',
                      'icon': Iconsax.calendar_2_copy,
                      'value': user.joinedAt,
                    },
                    {
                      'label': 'Dev.to Followers',
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
              if (user.summary.available) ...[
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
                      AppText.b1(user.summary),
                    ],
                  ),
                ),
              ],
              SizedBox(height: bottomBarHeight),
            ],
          ),
        ),
      ),
    );
  }
}
