---
inject: true
before: _instance
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_repo.dart
---
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>

Future<<%= model %>> <%= cModule %>() => _<%= pascal %>Provider.<%= cModule %>();