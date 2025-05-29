part of '../drafts.dart';

class _DeleteDraft extends StatelessWidget {
  const _DeleteDraft();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DraftBloc, DraftState>(
      listenWhen: (a, b) => a.delete.isFailed && b.delete.isDefault,
      listener: (_, state) {
        if (state.delete.isFailed) {
          UIFlash.error(
            context,
            state.delete.fault?.message ?? 'Failed to perform action',
          );
        }
        if (state.delete.isSuccess) {
          UIFlash.success(context, 'Draft deleted successfully!');
        }
      },
      builder: (context, state) {
        final loading = state.delete.isLoading;
        return FullScreenLoader(loading: loading);
      },
    );
  }
}
