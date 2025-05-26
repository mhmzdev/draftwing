part of '../bloc_sync.dart';

class _AgentSync extends BlocListener<ModelBloc, ModelState> {
  const _AgentSync() : super(listener: _listener, listenWhen: _listenWhen);

  static bool _listenWhen(ModelState a, ModelState b) {
    final checks = [a.generateDraft != b.generateDraft];
    return checks.any((e) => e);
  }

  static void _listener(BuildContext context, ModelState state) {
    AppLog.log('📦 BlocSync: ModelBloc triggered');
    if (state.generateDraft.isSuccess) {
      DraftBloc.b(context).add(const DraftIncrementCountEvent());

      final navigatorContext = navigator.currentContext!;
      final data = state.generateDraft.data;
      final functionCalls = data?.functionCalls ?? [];
      if (functionCalls.available) {
        UIFlash.success(
          navigatorContext,
          'Saving draft to your local storage...',
        );
        return AgentTools.ins.handleFunctionCall(
          navigatorContext,
          functionName: functionCalls.first.name,
          arguments: functionCalls.first.args,
          extra: data?.draft.toJson(),
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
