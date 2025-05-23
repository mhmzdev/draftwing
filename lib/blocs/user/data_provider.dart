part of 'cubit.dart';

class _UserProvider {
  static Future<User> login() async {
    try {
      final raw = <String, dynamic>{};
      return User.fromJson(raw);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<User> register() async {
    try {
      final raw = <String, dynamic>{};
      return User.fromJson(raw);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
