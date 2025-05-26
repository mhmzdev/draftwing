// ignore_for_file: unused_element

part of 'draft_repo.dart';

class _DraftMocks {
  static Future<Map> delete() {
    return Future.value({'message': 'mock', 'data': ''});
  }

  static Future<Map> saveDraft() {
    return Future.value({'message': 'mock', 'data': ''});
  }

  static Future<Map> drafts() {
    return Future.value({'message': 'mock', 'data': ''});
  }
}
