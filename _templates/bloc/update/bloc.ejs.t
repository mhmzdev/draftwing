---
inject: true
before: Future<void>
to: lib/blocs/<%= h.changeCase.snake(name) %>/bloc.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% args.forEach(function(arg){ %>
<% pModule = h.changeCase.pascal(arg.module) %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>
  Future<void> _on<%= pModule %>(
    <%= pascal %><%= pModule %>Event event,
    Emitter<<%= pascal %>State> emit,
  ) async {
    _<%= cModule %>Loading(emit);
    try {
      final data = await _<%= pascal %>Provider.<%= cModule %>();
      _<%= cModule %>Success(data, emit);
    } on Fault catch (e) {
      _<%= cModule %>Failed(e, emit);
    }
  }
<% }); %>
