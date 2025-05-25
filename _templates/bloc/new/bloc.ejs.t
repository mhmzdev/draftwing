---
to: lib/blocs/<%= h.changeCase.snake(name) %>/bloc.dart
---
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:draftwing/services/fault/faults.dart';
<% args.forEach(function(arg){ %>
import 'package:draftwing/models/<%= h.changeCase.snake(arg.model) %>/<%= h.changeCase.snake(arg.model) %>.dart';
<% }); %>

part 'state.dart';
part 'event.dart';
part 'data_provider.dart';
part 'data_mocks.dart';
part 'data_parser.dart';

class <%= h.changeCase.pascal(name) %>Bloc extends Bloc<<%= h.changeCase.pascal(name) %>Event, <%= h.changeCase.pascal(name) %>State> {
  <%= h.changeCase.pascal(name) %>Bloc() : super(<%= h.changeCase.pascal(name) %>State.initial()) {
<% args.forEach(function(arg){ %>
    on<_<%= h.changeCase.pascal(name) %><%= h.changeCase.pascal(arg.module) %>>(_on<%= h.changeCase.pascal(arg.module) %>);
<% }); %>
  }

<% args.forEach(function(arg){ %>
  Future<void> _on<%= h.changeCase.pascal(arg.module) %>(
    _<%= h.changeCase.pascal(name) %><%= h.changeCase.pascal(arg.module) %> event,
    Emitter<<%= h.changeCase.pascal(name) %>State> emit,
  ) async {
    try {
      emit(<%= h.changeCase.pascal(name) %>State.loading());
      final result = await _<%= h.changeCase.pascal(name) %>Provider.<%= h.changeCase.camel(arg.module) %>();
      emit(<%= h.changeCase.pascal(name) %>State.success(<%= h.changeCase.camel(arg.module) %>: result));
    } catch (e) {
      emit(<%= h.changeCase.pascal(name) %>State.failure(<%= h.changeCase.camel(arg.module) %>Fault: e as Fault));
    }
  }
<% }); %>
} 