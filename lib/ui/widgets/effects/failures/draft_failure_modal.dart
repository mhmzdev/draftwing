import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:draftwing/ui/widgets/design/modal/app_modal_base.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class GenerateArticleFailedModal extends StatelessWidget {
  const GenerateArticleFailedModal({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return AppModalBase(
      expanded: false,
      dragger: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Iconsax.warning_2, size: 48, color: AppTheme.c.error),
          Space.y.t12,
          AppText.h1('Draft Generation Failed').cl(AppTheme.c.error),
          Space.y.t16,
          AppText.b1(error, textAlign: TextAlign.center).selectable(),
          Space.y.t24,
          AppButton(
            onPressed: () => ''.pop(context),
            label: 'Try Again',
            mainAxisSize: MainAxisSize.max,
          ),
        ],
      ),
    );
  }
}
