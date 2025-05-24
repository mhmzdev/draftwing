part of '../drafts.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CoreHeader(
              padding: Space.a.t16,
              leading: GradientIcon(
                Iconsax.document_copy,
                size: SpaceToken.t32,
              ),
              title: 'Drafts',
              subTitle: '${mockDrafts.length} drafts created',
            ),
            Space.y.t04,
            Expanded(
              child: ScrollColumnExpandable(
                padding: Space.h.t16,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...mockDrafts.map((draft) {
                    return _DraftCard(draft: draft);
                  }),
                  Space.y.t12,
                  SizedBox(height: bottomBarHeight),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
