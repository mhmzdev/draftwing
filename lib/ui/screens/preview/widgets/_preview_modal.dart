part of '../preview.dart';

class _PreviewModal extends StatelessWidget {
  final String title;
  final String body;
  const _PreviewModal({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return AppModalBase(
      expanded: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CoreHeader(
            leading: IconButton(
              onPressed: () {
                ''.pop(context);
              },
              icon: const GradientIcon(Iconsax.arrow_left_2_copy),
              splashRadius: 20,
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
            ),
            title: 'Final Preview',
            subTitle: 'This is how your article will look like.',
          ),
          Divider(height: SpaceToken.t20),
          Expanded(child: MarkdownWidget(data: body)),
        ],
      ),
    );
  }
}
