import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/ui/painters/painters.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:draftwing/ui/widgets/misc/complext_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../app_modal_base.dart';

class CopyGuidelinesButton extends StatelessWidget {
  const CopyGuidelinesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => const MediumCopyGuideModal(),
        );
      },
      icon: const GradientIcon(Iconsax.info_circle_copy),
      splashRadius: 15,
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      tooltip: 'Copy guidelines',
    );
  }
}

class MediumCopyGuideModal extends StatelessWidget {
  const MediumCopyGuideModal({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    return AppModalBase(
      expanded: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Space.y.t24,
          Center(
            child: CustomPaint(
              painter: const MediumBrandingPainter(),
              size: MediumBrandingPainter.s(150),
            ),
          ),
          Space.y.t32,
          AppText.h1('Copy to Medium'),
          Space.y.t24,
          ComplexText(
            string:
                'Since Medium {does not} support {markdown}, you need to manually copy the {Preview body} and paste it in Medium.\n\n1. Long press on the Preview body\n2. Select "Select All" from the menu\n3. Click on the "Copy" button\n4. Open Medium and paste the body in the editor\n\nRest of the platforms support markdown, so you can copy the markdown body and paste it in the editor.',
            style: AppText.b1('').cl(AppTheme.c.textBody).style!,
            specialStyle: AppText.b1('').cl(AppTheme.c.textBody).w(700).style,
          ),
          Space.y.t16,
          AppButton(
            onPressed: () => ''.pop(context),
            label: 'Got it',
            mainAxisSize: MainAxisSize.max,
          ),
        ],
      ),
    );
  }
}

class DraftGuidelinesButton extends StatelessWidget {
  const DraftGuidelinesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
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
    );
  }
}

class DraftGuidelineModal extends StatelessWidget {
  const DraftGuidelineModal({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return AppModalBase(
      expanded: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Space.y.t32,
          AppText.h1('Local Storage Only'),
          Space.y.t24,
          ComplexText(
            string:
                'Please note that all drafts are {stored locally} on your device. This means:\n\n• If you {clear your app cache}, all drafts will be deleted\n• If you {uninstall the app}, all drafts will be lost\n• Drafts are {not synced} across devices\n\nMake sure to publish or backup important drafts before clearing cache or uninstalling.',
            style: AppText.b1('').cl(AppTheme.c.textBody).style!,
            specialStyle: AppText.b1('').cl(AppTheme.c.textBody).w(700).style,
          ),
          Space.y.t16,
          AppButton(
            onPressed: () => ''.pop(context),
            label: 'Understood',
            mainAxisSize: MainAxisSize.max,
          ),
          Space.y.t16,
        ],
      ),
    );
  }
}
