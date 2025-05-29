---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_data_provider.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% model = h.changeCase.pascal(model) %>
part of '<%= h.changeCase.snake(name) %>_repo.dart';

class _<%= pascal %>Provider {
  static Future<<%= model %>> fetch() async {
    try {
      final raw = <String, dynamic>{};
      return <%= model %>.fromJson(raw);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}