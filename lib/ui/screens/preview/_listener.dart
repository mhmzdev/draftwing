part of 'preview.dart';

class _Listener extends StatelessWidget {
  const _Listener();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ArticleCubit, ArticleState>(
      listenWhen: (a, b) => a.create != b.create,
      listener: (_, state) {
        if (state.create.isFailed) {
          UIFlash.error(
            context,
            state.create.fault?.message ?? 'Failed to perform action',
          );
        }
        if (state.create.isSuccess) {
          UIFlash.success(context, 'Draft saved successfully');
          ''.pop(context);
          AppRoutes.drafts.pushReplace(context);
        }
      },
      builder: (context, state) {
        final loading = state.create.isLoading;
        return FullScreenLoader(loading: loading);
      },
    );
  }
}
