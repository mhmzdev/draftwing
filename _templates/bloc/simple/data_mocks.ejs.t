---
to: lib/blocs/<%= h.changeCase.snake(name) %>/data_mocks.dart
---
// ignore_for_file: unused_element
part of 'bloc.dart';

class _<%= h.changeCase.pascal(name) %>Mocks {
  static Future<Map> fetch() {
    return Future.value({'message': 'mock', 'data': ''});
  }
}
