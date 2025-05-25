import 'package:draftwing/blocs/draft/cubit.dart';
import 'package:draftwing/helpers/launcher.dart';
import 'package:draftwing/models/response/draft_response.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:draftwing/ui/widgets/core/header/core_header.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:draftwing/ui/widgets/design/chip/chip.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:draftwing/ui/widgets/design/modal/_preview_modal.dart';
import 'package:draftwing/ui/widgets/headless/scroll_column_expandable.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import 'package:draftwing/configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';
import 'package:shimmer/shimmer.dart';

part 'widgets/_body.dart';
part 'widgets/_card.dart';
part 'widgets/_skeleton.dart';

part '_state.dart';

class DraftsScreen extends StatefulWidget {
  const DraftsScreen({super.key});

  @override
  State<DraftsScreen> createState() => _DraftsScreenState();
}

class _DraftsScreenState extends State<DraftsScreen> {
  @override
  void initState() {
    super.initState();
    final cubit = DraftCubit.c(context);
    final state = cubit.state;
    cubit.drafts(force: state.drafts.isDefault);
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
