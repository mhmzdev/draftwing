---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_data_provider.dart
---
<% pascal = h.changeCase.pascal(name) %>
part of '<%= h.changeCase.snake(name) %>_repo.dart';

class _<%= pascal %>Provider {
<% args.forEach(function(arg){ %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>
  static Future<<%= model %>> <%= cModule %>() async {
    try {
      final raw = <String, dynamic>{};
      return <%= model %>.fromJson(raw);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

<% }); %>
}
