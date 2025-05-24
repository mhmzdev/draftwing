import 'dart:io';

import 'package:brain/brain.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

part 'configs.dart';
part 'local.dart';

class AppFCM {
  static void init() async {
    LocalNotification.init();

    AppLog.log('Notifications initialized');
  }
}
