part of '../bloc_sync.dart';

class _DraftSync extends BlocListener<DraftCubit, DraftState> {
  const _DraftSync() : super(listener: _listener, listenWhen: _listenWhen);

  static bool _listenWhen(DraftState a, DraftState b) {
    final checks = [a.saveDraft != b.saveDraft, a.delete != b.delete];
    return checks.any((e) => e);
  }

  static void _listener(BuildContext context, DraftState state) {
    final anyChecks = [state.saveDraft.isSuccess, state.delete.isSuccess];
    if (anyChecks.any((e) => e)) {
      DraftCubit.c(context).drafts();
    }
  }
}
