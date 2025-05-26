---
to: lib/blocs/<%= h.changeCase.snake(name) %>/cubit.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% cubit = pascal+"Cubit" %>
import 'dart:async';

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
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:draftwing/configs/configs.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'emitter.dart';
part 'state.dart';

class <%= cubit %> extends Cubit< <%= pascal %>State> with _<%= pascal %>Emitter {
  static <%= cubit %> c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of< <%= cubit %>>(context, listen: listen);
  <%= cubit %>() : super(<%= pascal %>State.def());

<% args.forEach(function(arg){ %>

<% pModule = h.changeCase.pascal(arg.module) %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>

  Future<void> <%= cModule %>() async {
    _<%= cModule %>Loading();
    try {
      final data = await _<%= pascal %>Provider.<%= cModule %>();
      _<%= cModule %>Success(data);
    } on Fault catch (e) {
      _<%= cModule %>Failed(e);
    }
  }
<% }); %>

  void reset() => _reset();
}