part of 'notification.dart';

class LocalNotification {
  static final ins = FlutterLocalNotificationsPlugin();

  static void init() async {
    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@drawable/ic_notify'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      ),
    );

    await LocalNotification.ins.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        if (details.id == 0) {
          AppAlice.showInspector();
        }
      },
    );

    if (Platform.isAndroid) {
      final hasAndroidPermission =
          await LocalNotification.ins
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >()
              ?.requestNotificationsPermission();
      AppLog.log(
        '--- Android 13 and above has notification permission ----- $hasAndroidPermission',
      );
    }
  }

  static Future<void> handleNotificationAction(
    Map<String, dynamic> payload,
  ) async {
    if (payload.isNotEmpty) {
      //
    } else {
      AppAlice.showInspector();
    }
  }
}
