import 'package:draftwing/blocs/agent/cubit.dart';
import 'package:draftwing/models/article/article.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/ui/painters/painters.dart';
import 'package:draftwing/ui/widgets/core/header/core_header.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:draftwing/ui/widgets/forms/form.dart';
import 'package:draftwing/ui/widgets/headless/scroll_column_expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import 'package:configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';

import 'package:draftwing/blocs/article/cubit.dart';
import 'package:brain/brain.dart';
import 'package:draftwing/utils/flash.dart';
import 'package:draftwing/ui/widgets/design/full_screen_loader/full_screen_loader.dart';
part 'widgets/_body.dart';
part 'widgets/_form.dart';

part '_listener.dart';
part '_state.dart';

part 'static/_form_data.dart';
part 'static/_form_keys.dart';

class WriteScreen extends StatelessWidget {
  const WriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
