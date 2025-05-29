---
inject: true
after: // --- events --- //
to: lib/blocs/<%= h.changeCase.snake(name) %>/events.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% args.forEach(function(arg){ %>
<% pModule = h.changeCase.pascal(arg.module) %>

class <%= pascal %><%= pModule %>Event extends <%= pascal %>Event {
  const <%= pascal %><%= pModule %>Event();
}
<% }); %>