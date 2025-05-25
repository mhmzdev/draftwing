part of '../preview.dart';

class _BackAlert extends StatelessWidget {
  final DraftResponse draft;
  const _BackAlert({required this.draft});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: AppText.h1('Discard Draft?'),
      content: AppText.b1(
        'Your changes will be discarded if you don\'t copy them.\n\nPress \'Copy\' to save the body markdown to clipboard.',
        textAlign: TextAlign.center,
      ),
      icon: const GradientIcon(Iconsax.warning_2, size: 48),

      actions: [
        TextButton(
          onPressed:
              () =>
                  Navigator.of(context)
                    ..pop() // alert
                    ..pop(), // preview screen
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(AppTheme.c.error),
          ),
          child: const Text('Proceed'),
        ),
        TextButton(
          onPressed: () => ''.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
