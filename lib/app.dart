import 'package:draftwing/global/bloc_sync/bloc_sync.dart';
import 'package:draftwing/services/notifications/notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:configs/configs.dart';
import 'package:brain/brain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'router/router.dart';
import 'router/routes.dart';

// bloc-imports-start
import 'blocs/agent/cubit.dart';
import 'blocs/article/cubit.dart';
import 'blocs/user/cubit.dart';

// bloc-imports-end

// provider-imports-start
import 'providers/app.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    AppNotification.init(navigator);
    AppNotification.onReceiveLocalNotification();
    if (kDebugMode) {
      AppAlice.setNavigatorKey(navigator);
    }
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return MultiProvider(
      providers: [
        // bloc-initiate-start
        BlocProvider(create: (_) => AgentCubit()),
        BlocProvider(create: (_) => ArticleCubit()),
        BlocProvider(create: (_) => UserCubit()),
        // bloc-initiate-end

        // provider-initiate-start
        ChangeNotifierProvider(create: (_) => AppProvider()),
        // provider-initiate-end
      ],
      child: Consumer<AppProvider>(
        builder: (context, state, child) {
          return MaterialApp(
            title: 'Draft Wing',
            navigatorKey: navigator,
            themeMode: state.themeMode,
            theme: materialLightTheme,
            darkTheme: materialDarkTheme,
            debugShowCheckedModeBanner: false,
            routes: appRoutes,
            navigatorObservers: [RouteLogger(navigatorKey: navigator)],
            onGenerateRoute: onGenerateRoutes,
            initialRoute: AppRoutes.splash,
            builder: (context, child) => BlocSync(child: child!),
          );
        },
      ),
    );
  }
}
