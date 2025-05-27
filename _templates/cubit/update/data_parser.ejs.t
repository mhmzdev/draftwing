---
inject: true
after: _<%= h.changeCase.pascal(name) %>Parser
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_parser.dart
---
<% args.forEach(function(arg){ %>
  static Map <%= h.changeCase.camel(arg.module) %>(Map data) => data;
<% }); %>