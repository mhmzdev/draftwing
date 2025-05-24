import 'package:draftwing/ui/screens/preview/preview.dart';
import 'package:draftwing/ui/screens/medium_auth/medium_auth.dart';
import 'package:draftwing/ui/screens/settings/settings.dart';
import 'package:draftwing/ui/screens/drafts/drafts.dart';
import 'package:draftwing/ui/screens/splash/splash.dart';
import 'package:draftwing/ui/screens/profile/profile.dart';
import 'package:draftwing/ui/screens/write/write.dart';
import 'package:draftwing/ui/screens/login/login.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

final navigator = GlobalKey<NavigatorState>();

final appRoutes = <String, WidgetBuilder>{
  AppRoutes.preview: (_) => const PreviewScreen(),
  AppRoutes.mediumAuth: (_) => const MediumAuthScreen(),
  AppRoutes.splash: (_) => const SplashScreen(),
  AppRoutes.login: (_) => const LoginScreen(),
};

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.write:
      return FadeRoute(child: const WriteScreen(), settings: settings);
    case AppRoutes.drafts:
      return FadeRoute(child: const DraftsScreen(), settings: settings);
    case AppRoutes.settings:
      return FadeRoute(child: const SettingsScreen(), settings: settings);
    case AppRoutes.profile:
      return FadeRoute(child: const ProfileScreen(), settings: settings);
    default:
      return null;
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;

  @override
  final RouteSettings settings;

  FadeRoute({required this.child, required this.settings})
    : super(
        settings: settings,
        pageBuilder: (context, ani1, ani2) => child,
        transitionsBuilder: (context, ani1, ani2, child) {
          return FadeTransition(opacity: ani1, child: child);
        },
      );
}
