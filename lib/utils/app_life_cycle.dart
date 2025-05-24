import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LifecycleEventHandler extends WidgetsBindingObserver {
  LifecycleEventHandler({
    this.resumeCallBack,
    this.detachedCallBack,
    this.inactiveCallBack,
  });

  final Function()? resumeCallBack;
  final Function()? detachedCallBack;
  final Function()? inactiveCallBack;

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.inactive:
        await inactiveCallBack?.call();
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        await detachedCallBack?.call();
        break;
      case AppLifecycleState.resumed:
        await resumeCallBack?.call();
        break;
      default:
        break;
    }
    if (!kReleaseMode) {
      debugPrint('''
=============================================================
               $state
=============================================================
''');
    }
  }
}
