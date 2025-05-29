import 'dart:math' as math;

import 'package:draftwing/router/routes.dart';
import 'package:draftwing/ui/painters/painters.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:draftwing/configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';

part 'widgets/_body.dart';
part 'widgets/_trail.dart';

part '_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
