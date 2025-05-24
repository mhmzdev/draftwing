import 'package:brain/brain.dart';
import 'package:configs/configs.dart';
import 'package:draftwing/blocs/agent/cubit.dart';
import 'package:draftwing/router/router.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/ui/widgets/effects/failures/draft_failure_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'article/_agent_sync.dart';

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
      ],
      child: child,
    );
  }
}
