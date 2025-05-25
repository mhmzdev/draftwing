import 'dart:convert';
import 'dart:io';

import 'package:brain/brain.dart';
import 'package:configs/configs.dart';
import 'package:draftwing/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

part 'local.dart';

class AppNotification {
  static late GlobalKey<NavigatorState> _navigator;

  static void init(GlobalKey<NavigatorState> state) async {
    _navigator = state;
    LocalNotification.init(_navigator);
    AppLog.log('Local notifications initialized');
  }

  static void onReceiveLocalNotification() async {
    debugPrint('----- Local notification listener ready -----');
    // Local notifications are handled via the initialization callback
  }
}
