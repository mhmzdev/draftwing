import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/services/route_logger/route_logger.dart';
import 'package:draftwing/ui/widgets/core/header/core_header.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:markdown_widget/widget/markdown.dart';

import 'app_modal_base.dart';
import 'guidelines/guidelines.dart';

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
