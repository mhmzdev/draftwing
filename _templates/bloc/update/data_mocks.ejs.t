---
inject: true
after: _<%= h.changeCase.pascal(name) %>Mocks
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_mocks.dart
---
<% args.forEach(function(arg){ %>
  static Future<Map> <%= h.changeCase.camel(arg.module) %>() {
    return Future.value({'message': 'mock', 'data': ''});
  }
<% }); %>