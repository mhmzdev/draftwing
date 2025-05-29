---
to: lib/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_repo.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% 
const addedImports = new Set();
args.forEach(function(arg){ 
  const importPath = `package:draftwing/models/${h.changeCase.snake(arg.model)}/${h.changeCase.snake(arg.model)}.dart`;
  if (!addedImports.has(importPath)) {
    addedImports.add(importPath);
%>
import '<%= importPath %>';
<%  }
}); %>
import 'package:draftwing/services/fault/faults.dart';

part '<%= h.changeCase.snake(name) %>_mocks.dart';
part '<%= h.changeCase.snake(name) %>_parser.dart';
part '<%= h.changeCase.snake(name) %>_data_provider.dart';

class <%= pascal %>Repo {
  static final <%= pascal %>Repo _instance = <%= pascal %>Repo._();
  <%= pascal %>Repo._();

  static <%= pascal %>Repo get ins => _instance;

<% args.forEach(function(arg){ %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>
  Future<<%= model %>> <%= cModule %>() => _<%= pascal %>Provider.<%= cModule %>();

<% }); %>
} 