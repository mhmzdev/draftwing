part of '../drafts.dart';

class _DraftCard extends StatelessWidget {
  final Draft draft;
  const _DraftCard({required this.draft});

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
              Expanded(child: AppText.h3(draft.title, maxLines: 3)),
              Space.x.t12,
              AppChip(label: draft.status.name, color: draft.status.color),
            ],
          ),
          Space.y.t12,
          Wrap(
            spacing: SpaceToken.t08,
            runSpacing: SpaceToken.t08,
            children:
                draft.tags.map((tag) {
                  return AppChip(label: tag, prefixIcon: Iconsax.tag_copy);
                }).toList(),
          ),
          Space.y.t12,
          Row(
            children: [
              Icon(Iconsax.calendar, size: 20, color: AppTheme.c.textDim),
              Space.x.t04,
              AppText.b2(draft.createdAt.date),
              Space.x.t12,
              AppChip(
                label: draft.readingLength.descriptive.titleCase,
                color: draft.readingLength.color,
              ),
            ],
          ),
          Space.y.t12,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  onPressed: () {},
                  icon: Icons.open_in_new_rounded,
                  label: 'Edit',
                  state: AppButtonState.bordered,
                ),
              ),
              Space.x.t08,
              AppButton(
                onPressed: () {},
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
