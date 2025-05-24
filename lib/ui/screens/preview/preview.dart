import 'package:draftwing/blocs/article/cubit.dart';
import 'package:draftwing/models/agent/draft_response.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/ui/widgets/core/header/core_header.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:draftwing/ui/widgets/design/modal/_preview_modal.dart';
import 'package:draftwing/utils/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brain/brain.dart';
import 'package:draftwing/ui/widgets/design/full_screen_loader/full_screen_loader.dart';
part 'static/_form_data.dart';
part 'static/_form_keys.dart';

part 'widgets/_body.dart';
part 'widgets/_alert.dart';
part 'widgets/_header.dart';

part '_listener.dart';
part '_state.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  void initState() {
    super.initState();
    ArticleCubit.c(context).resetSaveDraft();
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(args: args),
      child: const _Body(),
    );
  }
}
