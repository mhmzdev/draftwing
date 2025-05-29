---
inject: true
after: _<%= h.changeCase.pascal(name) %>Provider
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_data_provider.dart
---
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