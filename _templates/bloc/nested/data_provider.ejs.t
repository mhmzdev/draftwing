---
to: lib/blocs/<%= h.changeCase.snake(name) %>/data_provider.dart
---
part of 'bloc.dart';

class _<%= h.changeCase.pascal(name) %>Provider {
<% args.forEach(function(arg){ %>
  static Future< <%= h.changeCase.pascal(arg.model) %>> <%= h.changeCase.camel(arg.module) %>() async {
    try {
      final raw = <String, dynamic>{};
      return <%= h.changeCase.pascal(arg.model) %>.fromJson(raw);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }
<% }); %>
} 