part of 'cubit.dart';

class _ArticleProvider {
  static Future<void> saveDraft(DraftResponse draft) async {
    try {
      await DevToApi.ins.post('/articles', data: {'article': draft.toJson()});
    } on DioException catch (e) {
      throw HttpFault.fromDioException(e, StackTrace.current);
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
    } on DioException catch (e) {
      throw HttpFault.fromDioException(e, StackTrace.current);
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
    } on DioException catch (e) {
      throw HttpFault.fromDioException(e, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
