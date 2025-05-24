part of 'preview.dart';

class _ScreenState extends ChangeNotifier {
  // ignore: unused_element
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  _ScreenState({required Map<String, dynamic> args}) {
    draft = DraftResponse.fromJson(args);
  }

  final formKey = GlobalKey<FormBuilderState>();

  late DraftResponse draft;

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
    ArticleCubit.c(context).saveDraft(draft);
  }
}
