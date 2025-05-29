---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_mocks.dart
---
// ignore_for_file: unused_element
<% pascal = h.changeCase.pascal(name) %>
part of '<%= h.changeCase.snake(name) %>_repo.dart';

class _<%= pascal %>Mocks {
<% args.forEach(function(arg){ %>
<% cModule = h.changeCase.camel(arg.module) %>
  static Future<Map> <%= cModule %>() {
    return Future.value({'message': 'mock', 'data': ''});
  }
<% }); %>
}