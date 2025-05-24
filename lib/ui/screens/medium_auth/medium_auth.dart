import 'package:draftwing/ui/painters/painters.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';

part 'widgets/_body.dart';

part '_state.dart';

class MediumAuthScreen extends StatelessWidget {
  const MediumAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
