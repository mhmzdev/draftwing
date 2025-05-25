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
    final articleCubit = DraftCubit.c(context, true);
    final articleState = articleCubit.state;
    final draftsList = articleState.draftsList;
    final list = draftsList;

    final app = AppProvider.s(context);

    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      bottomBarHeightChanged: (height) {
        setState(() {
          bottomBarHeight = height;
        });
      },
      child: SafeArea(
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
            Expanded(child: Assets.misc.articleJourney.image()),
            Space.y.t20,
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
                    'label': 'Drafts Generated',
                    'icon': Iconsax.document_text_copy,
                    'value': articleState.draftsCount.toString(),
                  },

                  {
                    'label': 'Saved',
                    'icon': Iconsax.save_2_copy,
                    'value': list.length.toString(),
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
            Space.y.t16,
            Padding(
              padding: Space.h.t16,
              child: _StatsCard(
                label: 'Joined Since',
                icon: Iconsax.calendar_2_copy,
                value: app.joinedAt.date,
                padding: Space.v.t16,
              ),
            ),
            Space.y.t12,
            SizedBox(height: bottomBarHeight),
          ],
        ),
      ),
    );
  }
}
