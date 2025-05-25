import 'package:draftwing/blocs/draft/cubit.dart';
import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/blocs/agent/cubit.dart';
import 'package:draftwing/router/router.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/services/agent_tools.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:draftwing/services/log.dart';
import 'package:draftwing/ui/widgets/effects/failures/draft_failure_modal.dart';
import 'package:draftwing/utils/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'agent/_agent_sync.dart';
part 'draft/_draft_sync.dart';

/*

Since by nature a simple bloc can't be aware of other blocs
By default we can't access or dispatch an action from bloc directly.
Hence this headless widget will be responsible for dispatching side effect actions.

*/
class BlocSync extends StatelessWidget {
  const BlocSync({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: const [
        _AgentSync(), //
        _DraftSync(), //
      ],
      child: child,
    );
  }
}
