part of '../drafts.dart';

class _DeleteAlert extends StatelessWidget {
  final String draftId;
  const _DeleteAlert({required this.draftId});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return AlertDialog(
      title: AppText.h1('Delete Draft?'),
      content: AppText.b1(
        'This action cannot be undone. The draft will be permanently deleted.',
        textAlign: TextAlign.center,
      ),
      icon: const GradientIcon(Iconsax.warning_2, size: 48),
      actions: [
        TextButton(
          onPressed: () {
            ''.pop(context);
            DraftBloc.b(context).add(DraftDeleteEvent(draftId));
          },
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(AppTheme.c.error),
          ),
          child: const Text('Delete'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
