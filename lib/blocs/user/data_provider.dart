part of 'cubit.dart';

class _UserProvider {
  static Future<User> me() async {
    try {
      final response = await DevToApi.ins.get('/users/me');
      return User.fromJson(response.data);
    } on DioException catch (e) {
      throw HttpFault.fromDioException(e, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
