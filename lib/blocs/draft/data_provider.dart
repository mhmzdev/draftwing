part of 'bloc.dart';

class _DraftProvider {
  static final draftsBox = Hive.box(AppHiveKeys.drafts);

  static Future<void> delete(int index) async {
    try {
      await draftsBox.deleteAt(index);
    } on HiveError catch (e) {
      throw HiveFault(e, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<void> saveDraft(
    DraftResponse draft, {
    bool isEdit = false,
  }) async {
    try {
      if (isEdit) {
        await draftsBox.put(draft.id, draft);
      } else {
        await draftsBox.add(draft);
      }
    } on HiveError catch (e) {
      throw HiveFault(e, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<List<DraftResponse>> drafts() async {
    try {
      final drafts = draftsBox.values.toList().cast<DraftResponse>();
      drafts.sort((a, b) => b.generatedAt.compareTo(a.generatedAt));
      return drafts;
    } on HiveError catch (e) {
      throw HiveFault(e, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
