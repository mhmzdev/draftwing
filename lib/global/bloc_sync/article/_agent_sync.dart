part of '../bloc_sync.dart';

class _AgentSync extends BlocListener<AgentCubit, AgentState> {
  const _AgentSync() : super(listener: _listener, listenWhen: _listenWhen);

  static bool _listenWhen(AgentState a, AgentState b) {
    final checks = [a.generateDraft != b.generateDraft];
    return checks.any((e) => e);
  }

  static void _listener(BuildContext context, AgentState state) {
    AppLog.log('📦 BlocSync: AgentCubit triggered');
    if (state.generateDraft.isSuccess) {
      final navigatorContext = navigator.currentContext!;
      final data = state.generateDraft.data;
      final functionCalls = data?.functionCalls ?? [];
      if (functionCalls.available) {
        UIFlash.success(
          navigatorContext,
          'Saving draft to your dev.to profile...',
        );
        return AgentTools.ins.handleFunctionCall(
          navigatorContext,
          functionName: functionCalls.first.name,
          arguments: functionCalls.first.args,
        );
      }
      AppRoutes.preview.push(navigatorContext, arguments: data?.draft.toJson());
    }

    if (state.generateDraft.isFailed) {
      final navigatorContext = navigator.currentContext!;
      showModalBottomSheet(
        context: navigatorContext,
        isScrollControlled: true,
        useSafeArea: true,
        backgroundColor: Colors.transparent,
        builder:
            (context) => GenerateArticleFailedModal(
              error:
                  state.generateDraft.fault?.message ??
                  'Something went wrong while generating your article. Please try again.',
            ),
      );
    }
  }
}
