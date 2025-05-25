part of 'cubit.dart';

class _DraftProvider {
  static final draftsBox = Hive.box(AppHiveKeys.drafts);
  static Future<void> saveDraft(DraftResponse draft) async {
    try {
      await draftsBox.add(draft);
    } on HiveError catch (e) {
      throw HiveFault(e, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<List<DraftResponse>> drafts() async {
    try {
      final drafts = draftsBox.values.toList().cast<DraftResponse>();
      return drafts;
    } on HiveError catch (e) {
      throw HiveFault(e, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
