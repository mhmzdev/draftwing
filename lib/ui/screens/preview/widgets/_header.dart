part of '../preview.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context);

    return KeyboardVisibilityBuilder(
      builder: (context, isVisible) {
        return AnimatedSwitcher(
          duration: AppProps.normal,
          child:
              isVisible
                  ? const SizedBox.shrink()
                  : Padding(
                    padding: Space.b.t12,
                    child: CoreHeader(
                      leading: IconButton(
                        onPressed: () {
                          if (screenState.isEdit) {
                            ''.pop(context);
                            return;
                          }

                          showDialog(
                            context: context,
                            builder:
                                (context) =>
                                    _BackAlert(draft: screenState.draft),
                          );
                        },
                        icon: const GradientIcon(Iconsax.arrow_left_2_copy),
                        splashRadius: 20,
                        padding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                      ),
                      title:
                          screenState.isEdit ? 'Edit Draft' : 'Draft Generated',
                      subTitle:
                          'You can copy/paste body markdown on platforms like Medium, Dev.to, etc.',
                    ),
                  ),
        );
      },
    );
  }
}
