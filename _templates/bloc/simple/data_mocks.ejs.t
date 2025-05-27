---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_mocks.dart
---
// ignore_for_file: unused_element
<% pascal = h.changeCase.pascal(name) %>
part of '<%= h.changeCase.snake(name) %>_repo.dart';

class _<%= pascal %>Mocks {
  static Future<Map> fetch() {
    return Future.value({'message': 'mock', 'data': ''});
  }
}