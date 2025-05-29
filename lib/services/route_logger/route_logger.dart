import 'dart:developer';

import 'package:flutter/material.dart';

class RouteLogger extends NavigatorObserver {
  late GlobalKey<NavigatorState> navigatorKey;

  static final List<Route<dynamic>> _routeStack = [];

  static List<String> get routeHistory =>
      _routeStack.map((route) => route.settings.name ?? 'Unknown').toList();

  static List<String> get routeNames =>
      routeHistory; // Same as routeHistory now

  RouteLogger({required this.navigatorKey});

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.add(route);

    log(
      '🚀 NAVIGATION: PUSHED ${_getRouteName(route)} (from ${_getRouteName(previousRoute)})',
    );
    _printCurrentStack();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.remove(route);

    log(
      '⬅️ NAVIGATION: POPPED ${_getRouteName(route)} (back to ${_getRouteName(previousRoute)})',
    );
    _printCurrentStack();
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.remove(route);

    log('❌ NAVIGATION: REMOVED ${_getRouteName(route)}');
    _printCurrentStack();
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (oldRoute != null) {
      final index = _routeStack.indexOf(oldRoute);
      if (index != -1 && newRoute != null) {
        _routeStack[index] = newRoute;
      } else {
        _routeStack.remove(oldRoute);
      }
    }

    if (newRoute != null && !_routeStack.contains(newRoute)) {
      _routeStack.add(newRoute);
    }

    log(
      '🔄 NAVIGATION: REPLACED ${_getRouteName(oldRoute)} → ${_getRouteName(newRoute)}',
    );
    _printCurrentStack();
  }

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    log('👆 NAVIGATION: GESTURE START on ${_getRouteName(route)}');
  }

  @override
  void didStopUserGesture() {
    log('✋ NAVIGATION: GESTURE COMPLETED');
  }

  String _getRouteName(Route<dynamic>? route) {
    if (route == null) return 'null';

    var name = 'Unknown';

    if (route.settings.name != null) {
      name = route.settings.name!;
    }

    // Add route type for more detailed debugging
    final routeType = route.runtimeType.toString();
    return '$name ($routeType)';
  }

  void _printCurrentStack() {
    log('📚 CURRENT STACK (${_routeStack.length} routes):');
    for (var i = 0; i < _routeStack.length; i++) {
      log('   ${i + 1}. ${_getRouteName(_routeStack[i])}');
    }
  }

  static String? get currentRoute {
    return _routeStack.isNotEmpty ? _routeStack.last.settings.name : null;
  }

  static String? get previousRoute {
    return _routeStack.length > 1
        ? _routeStack[_routeStack.length - 2].settings.name
        : null;
  }

  static bool get canGoBack {
    return _routeStack.length > 1;
  }

  static void clearHistory() {
    _routeStack.clear();
  }

  static String get history {
    return routeHistory.join(' → ');
  }
}
