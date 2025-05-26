part of 'preview.dart';

class _SaveDraftListener extends StatelessWidget {
  const _SaveDraftListener();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);
    final isEdit = screenState.isEdit;

    return BlocConsumer<DraftBloc, DraftState>(
      listenWhen: (a, b) => a.saveDraft != b.saveDraft,
      listener: (_, state) {
        if (state.saveDraft.isFailed) {
          UIFlash.error(
            context,
            state.saveDraft.fault?.message ?? 'Failed to perform action',
          );
        }
        if (state.saveDraft.isSuccess) {
          UIFlash.success(context, 'Draft saved successfully');
          ''.pop(context);
          if (!isEdit) AppRoutes.drafts.pushReplace(context);
        }
      },
      builder: (context, state) {
        final loading = state.saveDraft.isLoading;
        return FullScreenLoader(loading: loading);
      },
    );
  }
}
