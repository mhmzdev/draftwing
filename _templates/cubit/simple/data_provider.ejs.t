---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_data_provider.dart
---
<% pmodel = h.changeCase.pascal(model) %>
part of '<%= h.changeCase.snake(name) %>_repo.dart';

class _<%= h.changeCase.pascal(name) %>Provider {
  static Future<<%= pmodel %>> fetch() async {
    try {
      final raw = <String, dynamic>{};
      return <%= pmodel %>.fromJson(raw);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
