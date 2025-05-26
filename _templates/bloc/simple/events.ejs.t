---
to: lib/blocs/<%= h.changeCase.snake(name) %>/events.dart
---
<% pascal = h.changeCase.pascal(name) %>
part of 'bloc.dart';

sealed class <%= pascal %>Event {
  const <%= pascal %>Event();
}

// --- events --- //
class <%= pascal %>FetchEvent extends <%= pascal %>Event {
  const <%= pascal %>FetchEvent();
}

class <%= pascal %>ResetEvent extends <%= pascal %>Event {
  const <%= pascal %>ResetEvent();
}