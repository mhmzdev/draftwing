---
inject: true
after: // --- nested states --- //
to: lib/blocs/<%= h.changeCase.snake(name) %>/state.dart
---
<%_ args.forEach(function(arg){ _%>
final BlocState< <%- h.changeCase.pascal(arg.model) %>> <%- h.changeCase.camel(arg.module) %>;<%_ }); _%>