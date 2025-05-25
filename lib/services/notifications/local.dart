part of 'notifications.dart';

class LocalNotification {
  static late GlobalKey<NavigatorState> _navigator;
  static final ins = FlutterLocalNotificationsPlugin();

  static const _draftChannel = AndroidNotificationChannel(
    'draft_channel',
    'Draft Generation',
    description: 'Notifications for article draft generation',
    importance: Importance.high,
  );

  static void init(GlobalKey<NavigatorState> state) async {
    _navigator = state;

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
        _handleNotificationTap(details);
      },
    );

    if (Platform.isAndroid) {
      final androidPlugin =
          LocalNotification.ins
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >();

      await androidPlugin?.createNotificationChannel(_draftChannel);

      final hasPermission =
          await androidPlugin?.requestNotificationsPermission();
      AppLog.log('Android notification permission: $hasPermission');
    }
  }

  // Handle notification tap actions
  static void _handleNotificationTap(NotificationResponse details) {
    final payload = details.payload;

    // Alice debug notification
    if (details.id == 0) {
      AppAlice.showInspector();
      return;
    }

    // Draft generation notification
    if (payload != null && payload.isNotEmpty) {
      try {
        final data = jsonDecode(payload) as Map<String, dynamic>;
        _handleDraftNotification(data);
      } catch (e) {
        AppLog.log('Error parsing notification payload: $e');
      }
    }
  }

  static void _handleDraftNotification(Map<String, dynamic> data) {
    final context = _navigator.currentContext;
    if (context != null && context.mounted) {
      final type = data['type'] as String?;

      switch (type) {
        case 'draft_ready':
          final draftData = data['draft'] as Map<String, dynamic>?;

          if (draftData != null) {
            AppRoutes.preview.push(context, arguments: draftData);
          }
          break;
        default:
          AppLog.log('Unknown notification type: $type');
      }
    }
  }

  static Future<void> showDraftReadyNotification({
    required String title,
    required Map<String, dynamic> draftData,
  }) async {
    final payload = jsonEncode({'type': 'draft_ready', 'draft': draftData});

    await ins.show(
      DateTime.now().millisecondsSinceEpoch ~/ 1000,
      'Draft Ready! 📝',
      '"$title" is ready to preview',
      NotificationDetails(
        android: AndroidNotificationDetails(
          _draftChannel.id,
          _draftChannel.name,
          channelDescription: _draftChannel.description,
          priority: Priority.high,
          importance: Importance.high,
          playSound: true,
          styleInformation: const BigTextStyleInformation(
            'Tap to preview and edit your generated article draft',
          ),
        ),
        iOS: const DarwinNotificationDetails(
          presentSound: true,
          threadIdentifier: 'draft',
        ),
      ),
      payload: payload,
    );
  }

  static Future<void> showDraftErrorNotification({
    required String title,
    required String error,
  }) async {
    await ins.show(
      DateTime.now().millisecondsSinceEpoch ~/ 1000,
      'Draft Generation Failed ❌',
      'Failed to generate "$title"',
      NotificationDetails(
        android: AndroidNotificationDetails(
          _draftChannel.id,
          _draftChannel.name,
          channelDescription: _draftChannel.description,
          priority: Priority.high,
          importance: Importance.high,
          playSound: true,
          styleInformation: BigTextStyleInformation(
            'Error: $error\nTap for more details',
          ),
        ),
        iOS: const DarwinNotificationDetails(
          presentSound: true,
          threadIdentifier: 'draft_error',
        ),
      ),
    );
  }

  static Future<void> showDraftProgressNotification({
    required String title,
    int? progress,
  }) async {
    await ins.show(
      999,
      'Generating Draft... ⏳',
      'Writing draft ${progress != null ? ' ($progress%)' : ''}',
      NotificationDetails(
        android: AndroidNotificationDetails(
          _draftChannel.id,
          _draftChannel.name,
          channelDescription: _draftChannel.description,
          priority: Priority.low,
          importance: Importance.low,
          playSound: false,
          ongoing: true,
          showProgress: progress != null,
          maxProgress: 100,
          progress: progress ?? 0,
        ),
        iOS: const DarwinNotificationDetails(
          presentSound: false,
          threadIdentifier: 'draft_progress',
        ),
      ),
    );
  }

  static Future<void> cancelProgressNotification() async =>
      await ins.cancel(999);

  static Future<void> cancelAllNotifications() async => await ins.cancelAll();
}
