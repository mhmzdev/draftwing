import 'package:hive_flutter/hive_flutter.dart';

import 'cache_keys.dart';

class HiveCache {
  static late Box draftsBox;

  static Future<void> init() async {
    if (Hive.isBoxOpen(AppHiveKeys.drafts)) return;
    draftsBox = await Hive.openBox(AppHiveKeys.drafts);
  }
}
