---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_repo.dart
---

import 'package:draftwing/models/<%= h.changeCase.snake(model) %>/<%= h.changeCase.snake(model) %>.dart';
import 'package:draftwing/services/fault/faults.dart';

part '<%= h.changeCase.snake(name) %>_mocks.dart';
part '<%= h.changeCase.snake(name) %>_parser.dart';
part '<%= h.changeCase.snake(name) %>_data_provider.dart';

class <%= h.changeCase.pascal(name) %>Repo {
  static final <%= h.changeCase.pascal(name) %>Repo _instance = <%= h.changeCase.pascal(name) %>Repo._();
  <%= h.changeCase.pascal(name) %>Repo._();

  static <%= h.changeCase.pascal(name) %>Repo get ins => _instance;

  Future<<%= h.changeCase.pascal(model) %>> fetch() => _<%= h.changeCase.pascal(name) %>Provider.fetch();
}