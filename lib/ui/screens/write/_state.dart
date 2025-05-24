part of 'write.dart';

class _ScreenState extends ChangeNotifier {
  // ignore: unused_element
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  final formKey = GlobalKey<FormBuilderState>();

  void onSubmit(BuildContext context) {
    final form = formKey.currentState!;
    final isValid = form.saveAndValidate();
    if (!isValid) return;

    context.dismissKeyboard();

    final data = form.value;
    AgentCubit.c(context).generateDraft(data);
  }
}
