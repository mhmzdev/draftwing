---
inject: true
after: <%= h.changeCase.pascal(name) %>State.def
to: lib/blocs/<%= h.changeCase.snake(name) %>/bloc.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% args.forEach(function(arg){ %>
<% pModule = h.changeCase.pascal(arg.module) %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>
    on<<%= pascal %><%= pModule %>Event>(_on<%= pModule %>);
<% }); %>
