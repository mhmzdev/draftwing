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
    final articleCubit = ArticleCubit.c(context, true);
    final articleState = articleCubit.state;
    final draftsList = articleState.draftsList;
    final publishedList = articleState.publishedList;
    final list = [...draftsList, ...publishedList];
    final isLoading =
        articleState.drafts.isLoading || articleState.published.isLoading;
    final isFailed =
        articleState.drafts.isFailed || articleState.published.isFailed;
    final isSuccess = articleState.drafts.isSuccess;

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
              title: 'Drafts & Published',
              subTitle: '${list.length} drafts/articles created',
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
                            'Something went wrong!',
                          ).cl(AppTheme.c.error),
                          Space.y.t16,
                          AppButton(
                            style: AppButtonStyle.danger,
                            padding: Space.h.t32,
                            label: 'Try Again',
                            onPressed: () => articleCubit.drafts(force: true),
                          ),
                        ],
                      ),
                    )
                  else if (list.isNotEmpty)
                    ...list.map((article) {
                      return _DraftCard(article: article);
                    })
                  else if (isSuccess && list.isEmpty)
                    Expanded(
                      child: Center(
                        child: AppText.b2(
                          'No drafts or published articles found!',
                        ),
                      ),
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
