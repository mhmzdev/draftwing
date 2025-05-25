import 'package:draftwing/global/bloc_sync/bloc_sync.dart';
import 'package:flutter/material.dart';

import 'package:draftwing/configs/configs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'router/router.dart';
import 'router/routes.dart';

// bloc-imports-start
import 'blocs/agent/cubit.dart';
import 'blocs/draft/cubit.dart';

// bloc-imports-end

// provider-imports-start
import 'providers/app.dart';
import 'services/route_logger/route_logger.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    App.init(context);

    return MultiProvider(
      providers: [
        // bloc-initiate-start
        BlocProvider(create: (_) => AgentCubit()),
        BlocProvider(create: (_) => DraftCubit()),
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
