import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

final themeMap = {
  'system': ThemeMode.system,
  'dark': ThemeMode.dark,
  'light': ThemeMode.light,
};

enum Cache { theme, locale, firstOpen, fetchPublished }

class AppProvider extends ChangeNotifier {
  static AppProvider s(BuildContext context, [bool listen = false]) =>
      Provider.of<AppProvider>(context, listen: listen);

  var themeMode = ThemeMode.light;
  var key = const Key('app');
  var firstOpen = false;
  var fetchPublished = true;
  late Box<dynamic> _cache;

  AppProvider() {
    _init();
  }

  void _init() async {
    await Hive.openBox('app');
    _cache = Hive.box('app');

    final cachedTheme = _cache.get(Cache.theme.toString());
    themeMode = cachedTheme == null ? themeMode : themeMap[cachedTheme]!;

    final hasOpened = _cache.get(Cache.firstOpen.toString());
    firstOpen = hasOpened == null;

    final cachedFetchPublished = _cache.get(Cache.fetchPublished.toString());
    fetchPublished =
        cachedFetchPublished == null ? false : cachedFetchPublished == 'true';

    notifyListeners();
  }

  void setTheme(ThemeMode newTheme) {
    if (themeMode == newTheme) return;
    themeMode = newTheme;
    notifyListeners();
    _cache.put(Cache.theme.toString(), newTheme.toString().split('.').last);
  }

  void setFirstOpen() {
    firstOpen = true;
    notifyListeners();
    _cache.put(Cache.firstOpen.toString(), 'true');
  }

  void setFetchPublished(bool value) {
    if (fetchPublished == value) return;
    fetchPublished = value;
    notifyListeners();
    _cache.put(Cache.fetchPublished.toString(), value.toString());
  }

  void reset() async {
    firstOpen = true;
    themeMode = ThemeMode.system;
    fetchPublished = false;
    await _cache.clear();
    key = Key(DateTime.now().toString());
    notifyListeners();
  }

  void resetKey([bool notify = true]) {
    key = Key(DateTime.now().toString());
    if (notify) notifyListeners();
  }
}
