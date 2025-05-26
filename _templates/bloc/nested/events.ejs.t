---
to: lib/blocs/<%= h.changeCase.snake(name) %>/events.dart
---
<% pascal = h.changeCase.pascal(name) %>
part of 'bloc.dart';

sealed class <%= pascal %>Event {
  const <%= pascal %>Event();
}
// --- events --- //
<% args.forEach(function(arg){ %>
<% module = h.changeCase.pascal(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>
class <%= pascal %><%= module %>Event extends <%= pascal %>Event {
  const <%= pascal %><%= module %>Event();
}

<% }); %>
class <%= pascal %>ResetEvent extends <%= pascal %>Event {
  const <%= pascal %>ResetEvent();
}