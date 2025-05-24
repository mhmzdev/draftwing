part of 'splash.dart';

class _Listener extends StatelessWidget {
  const _Listener();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (a, b) => a.me != b.me,
      listener: (_, state) {
        if (state.me.isSuccess) {
          AppRoutes.write.pushReplace(context);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
