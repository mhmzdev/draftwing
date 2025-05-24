import 'package:draftwing/ui/widgets/design/full_screen_loader/full_screen_loader.dart';
import 'package:flutter/material.dart';

class LoadingUtils {
  LoadingUtils._();

  static void showLoadingModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      isDismissible: false,
      builder: (_) {
        return PopScope(
          canPop: false,
          child: FullScreenLoader(
            loading: true,
            bg: Colors.black.withValues(alpha: 0.50),
          ),
        );
      },
    );
  }
}
