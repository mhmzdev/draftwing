import 'package:flutter/material.dart';

class AppLog {
  static void log(Object message, {String? prefix = ''}) {
    debugPrint('====== app_log ====== $prefix-> $message ======');
  }
}
