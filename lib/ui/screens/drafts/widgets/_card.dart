part of '../drafts.dart';

class _DraftCard extends StatelessWidget {
  final Article article;
  const _DraftCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppProps.cardDec,
      padding: Space.a.t16,
      margin: Space.b.t12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: AppText.h3(article.title, maxLines: 3)),
              Space.x.t12,
              AppChip(
                label: article.isPublished ? 'Published' : 'Draft',
                color:
                    article.isPublished
                        ? AppTheme.c.success
                        : AppTheme.c.textBody,
              ),
            ],
          ),
          Space.y.t12,
          Wrap(
            spacing: SpaceToken.t08,
            runSpacing: SpaceToken.t08,
            children:
                article.tagList.map((tag) {
                  return AppChip(label: tag, prefixIcon: Iconsax.tag_copy);
                }).toList(),
          ),
          Space.y.t12,
          Row(
            children: [
              if (article.publishedAt != null) ...[
                Icon(Iconsax.calendar, size: 20, color: AppTheme.c.textDim),
                Space.x.t04,
                AppText.b2(article.publishedAt!.date),
                Space.x.t12,
              ],
              AppChip(
                label: article.readingLength.descriptive.titleCase,
                color: article.readingLength.color,
              ),
            ],
          ),
          Space.y.t12,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  onPressed: () {
                    if (article.isPublished) {
                      LauncherHelper.url(article.url);
                    } else {
                      LauncherHelper.url('https://dev.to/dashboard');
                    }
                  },
                  icon: Icons.open_in_new_rounded,
                  label: 'Edit',
                  state: AppButtonState.bordered,
                ),
              ),
              Space.x.t08,
              AppButton(
                onPressed: () => LauncherHelper.url('https://dev.to/dashboard'),
                icon: Iconsax.trash_copy,
                style: AppButtonStyle.danger,
                state: AppButtonState.bordered,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
