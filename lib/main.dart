import 'package:draftwing/blocs/misc/cache.dart';
import 'package:draftwing/models/response/draft_response.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final appDir = await getApplicationDocumentsDirectory();
  Hive.init(appDir.path);

  // --- ADAPTERS --- //
  Hive.registerAdapter<DraftResponse>(HiveDraftResponseAdapter());
  Hive.registerAdapter<ReadingLength>(HiveReadingLengthAdapter());
  await HiveCache.init();

  runApp(const MyApp());
}
