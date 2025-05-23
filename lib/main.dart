import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    Hive.initFlutter();
  } else {
    final appDir = await getApplicationDocumentsDirectory();
    Hive.init(appDir.path);
  }

  runApp(const MyApp());
}
