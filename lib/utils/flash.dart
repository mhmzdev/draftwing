import 'package:draftwing/configs/configs.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';

class UIFlash {
  static void error(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    context.showErrorBar(
      indicatorColor: AppTheme.c.error,
      content: Text(message),
      duration: duration ?? 3.seconds,
    );
  }

  static void success(BuildContext context, String message) =>
      context.showSuccessBar(
        indicatorColor: AppTheme.c.success,
        content: Text(message),
      );

  static void message(BuildContext context, String message) {
    context.showFlash(
      barrierColor: Colors.black54,
      barrierDismissible: true,
      builder:
          (context, controller) => FadeTransition(
            opacity: controller.controller,
            child: FlashBar(controller: controller, content: Text(message)),
          ),
    );
  }
}
