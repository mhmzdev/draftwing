---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_parser.dart
---
// ignore_for_file: unused_element
part of '<%= h.changeCase.snake(name) %>_repo.dart';

class _<%= h.changeCase.pascal(name) %>Parser {
  static Map fetch(Map data) => data;
}
