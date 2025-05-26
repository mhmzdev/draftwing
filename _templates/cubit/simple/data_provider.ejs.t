---
to: lib/blocs/<%= h.changeCase.snake(name) %>/data_provider.dart
---
<% pmodel = h.changeCase.pascal(model) %>
part of 'cubit.dart';

class _<%= h.changeCase.pascal(name) %>Provider {
  static Future< <%= pmodel %>> fetch() async {
    try {
      return <%= pmodel %>.fromJson({});
    } catch (e) {
      throw UnknownFault('Something went wrong!', StackTrace.current);
    }
  }
}
