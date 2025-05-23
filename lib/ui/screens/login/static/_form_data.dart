part of '../login.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (!kDebugMode) {
      return {};
    }

    return {
      _FormKeys.email: 'hamza@test.com',
      _FormKeys.password: 'hamz@test.com',
    };
  }
}
