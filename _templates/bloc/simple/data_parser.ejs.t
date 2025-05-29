---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_parser.dart
---
// ignore_for_file: unused_element
<% pascal = h.changeCase.pascal(name) %>
part of '<%= h.changeCase.snake(name) %>_repo.dart';

class _<%= pascal %>Parser {
  static Map fetch(Map data) => data;
}