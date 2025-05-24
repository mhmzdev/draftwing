import 'package:brain/brain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: 'packages/brain/.env');

  if (kIsWeb) {
    Hive.initFlutter();
  } else {
    final appDir = await getApplicationDocumentsDirectory();
    Hive.init(appDir.path);
  }

  AppAlice.init();

  runApp(const MyApp());
}
