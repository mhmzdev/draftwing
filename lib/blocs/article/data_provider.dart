part of 'cubit.dart';

class _ArticleProvider {
  static Future<void> saveDraft(DraftResponse draft) async {
    try {
      await DevToApi.ins.post(
        '/articles',
        data: {'article': draft.toJson()},
      );
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<List<Article>> published() async {
    try {
      final response = await DevToApi.ins.get('/articles/me/published');
      final data = response.data;
      final list = data as List<dynamic>;
      return list.map((e) => Article.fromJson(e)).toList();
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<List<Article>> drafts() async {
    try {
      final response = await DevToApi.ins.get('/articles/me/unpublished');
      final data = response.data;
      final list = data as List<dynamic>;
      return list.map((e) => Article.fromJson(e)).toList();
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
