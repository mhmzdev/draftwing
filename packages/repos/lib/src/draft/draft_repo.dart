import 'package:fault/fault.dart';
import 'package:hive/hive.dart';
import 'package:repos/misc/cache_keys.dart';
import 'package:repos/models/response/draft_response.dart';

part 'draft_mocks.dart';
part 'draft_parser.dart';
part 'draft_data_provider.dart';

class DraftRepo {
  static final DraftRepo _instance = DraftRepo._();
  DraftRepo._();

  static DraftRepo get ins => _instance;

  Future<void> delete(int index) => _DraftProvider.delete(index);

  Future<void> saveDraft(DraftResponse draft, {bool isEdit = false}) =>
      _DraftProvider.saveDraft(draft, isEdit: isEdit);

  Future<List<DraftResponse>> drafts() => _DraftProvider.drafts();
}
