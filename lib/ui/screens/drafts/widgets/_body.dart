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
    final draftCubit = DraftCubit.c(context, true);
    final draftState = draftCubit.state;
    final draftsList = draftState.draftsList;
    final list = draftsList;
    final isLoading = draftState.drafts.isLoading;
    final isFailed = draftState.drafts.isFailed;
    final isSuccess = draftState.drafts.isSuccess;

    return Screen(
      keyboardHandler: true,
      bottomBar: true,
      bottomBarHeightChanged: (height) {
        setState(() {
          bottomBarHeight = height;
        });
      },
      overlayBuilders: const [_DeleteDraft()],
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
              title: 'Drafts & Published',
              subTitle: '${list.length} drafts/articles created',
              trailing: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const DraftGuidelineModal(),
                  );
                },
                icon: const GradientIcon(Iconsax.info_circle_copy),
                splashRadius: 20,
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
              ),
            ),
            if (isLoading && list.isNotEmpty) ...[
              const LinearProgressIndicator(),
              Space.y.t12,
            ],
            Expanded(
              child: ScrollColumnExpandable(
                padding: Space.h.t16,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (isLoading && list.isEmpty)
                    ...List.generate(3, (index) => const _CardSkeleton())
                  else if (isFailed && list.isEmpty)
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.error, size: 48, color: AppTheme.c.error),
                          Space.y.t12,
                          AppText.b1(
                            draftState.drafts.fault?.message ??
                                'Something went wrong!',
                            textAlign: TextAlign.center,
                          ).cl(AppTheme.c.error),
                          Space.y.t16,
                          AppButton(
                            style: AppButtonStyle.danger,
                            padding: Space.h.t32,
                            label: 'Try Again',
                            onPressed: () => draftCubit.drafts(force: true),
                          ),
                        ],
                      ),
                    )
                  else if (list.isNotEmpty)
                    ...list.map((draft) {
                      return _DraftCard(draft: draft);
                    })
                  else if (isSuccess && list.isEmpty)
                    Expanded(
                      child: Center(child: AppText.b2('No drafts saved yet!')),
                    ),
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
