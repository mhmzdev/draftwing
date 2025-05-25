import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/services/route_logger/route_logger.dart';
import 'package:draftwing/ui/painters/painters.dart';
import 'package:draftwing/ui/widgets/core/header/core_header.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:draftwing/ui/widgets/misc/complext_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:markdown_widget/widget/markdown.dart';

import 'app_modal_base.dart';

class MarkdownPreviewModal extends StatelessWidget {
  final String title;
  final String body;
  const MarkdownPreviewModal({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final secondLastPath = RouteLogger.routeNames.reversed.toList()[1];
    final isDrafts = secondLastPath == AppRoutes.drafts;

    return AppModalBase(
      expanded: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CoreHeader(
            trailing: const CopyGuidelinesButton(),
            leading: IconButton(
              onPressed: () {
                ''.pop(context);
              },
              icon: const GradientIcon(Iconsax.arrow_left_2_copy),
              splashRadius: 20,
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
            ),
            title: isDrafts ? 'Draft Preview' : 'Final Preview',
            subTitle:
                isDrafts ? null : 'This is how your article will look like.',
          ),
          Divider(height: SpaceToken.t20),
          Expanded(child: MarkdownWidget(data: body)),
        ],
      ),
    );
  }
}

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
