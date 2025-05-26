---
to: lib/blocs/<%= h.changeCase.snake(name) %>/event.dart
---
part of 'bloc.dart';

abstract class <%= h.changeCase.pascal(name) %>Event extends Equatable {
  const <%= h.changeCase.pascal(name) %>Event();

  @override
  List<Object> get props => [];
}

<% args.forEach(function(arg){ %>
class _<%= h.changeCase.pascal(name) %><%= h.changeCase.pascal(arg.module) %> extends <%= h.changeCase.pascal(name) %>Event {
  const _<%= h.changeCase.pascal(name) %><%= h.changeCase.pascal(arg.module) %>();
}
<% }); %>

// Add more events here 