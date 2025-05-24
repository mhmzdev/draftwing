import 'dart:math' as math;

import 'package:draftwing/blocs/user/cubit.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/ui/painters/painters.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'widgets/_body.dart';
part 'widgets/_trail.dart';

part '_listener.dart';
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
