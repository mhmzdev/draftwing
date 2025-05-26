---
to: lib/blocs/<%= h.changeCase.snake(name) %>/data_parser.dart
---
// ignore_for_file: unused_element
part of 'bloc.dart';

class _<%= h.changeCase.pascal(name) %>Parser {
  static Map fetch(Map data) => data;
}
