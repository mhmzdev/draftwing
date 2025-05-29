---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_repo.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% model = h.changeCase.pascal(model) %>
import 'package:draftwing/models/<%= h.changeCase.snake(model) %>/<%= h.changeCase.snake(model) %>.dart';
import 'package:draftwing/services/fault/faults.dart';

part '<%= h.changeCase.snake(name) %>_mocks.dart';
part '<%= h.changeCase.snake(name) %>_parser.dart';
part '<%= h.changeCase.snake(name) %>_data_provider.dart';

class <%= pascal %>Repo {
  static final <%= pascal %>Repo _instance = <%= pascal %>Repo._();
  <%= pascal %>Repo._();

  static <%= pascal %>Repo get ins => _instance;

  Future<<%= model %>> fetch() => _<%= pascal %>Provider.fetch();
}