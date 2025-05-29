part of 'preview.dart';

class _ScreenState extends ChangeNotifier {
  // ignore: unused_element
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  _ScreenState({required Map<String, dynamic> args}) {
    draft = DraftResponse.fromJson(args);
    isEdit = args['isEdit'] as bool? ?? false;
  }

  final formKey = GlobalKey<FormBuilderState>();

  late DraftResponse draft;
  bool isEdit = false;

  void onCopy(BuildContext context, {bool fromAlert = false}) async {
    await Clipboard.setData(ClipboardData(text: draft.bodyMarkdown));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      UIFlash.success(context, 'Article body copied to clipboard');
      if (fromAlert) {
        Navigator.of(context)
          ..pop() // alert
          ..pop(); // preview screen
      }
    });
  }

  void onSave(BuildContext context) {
    context.dismissKeyboard();

    if (isEdit) {
      final form = formKey.currentState!;
      final isValid = form.saveAndValidate();
      if (!isValid) return;
      final values = form.value;
      final title = values['title'] as String;
      final bodyMarkdown = values['bodyMarkdown'] as String;
      final updated = draft.copyWith(title: title, bodyMarkdown: bodyMarkdown);
      DraftBloc.b(context).add(DraftSaveEvent(updated, isEdit: isEdit));
      return;
    }
    DraftBloc.b(context).add(DraftSaveEvent(draft));
  }
}
