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
import 'package:draftwing/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_repo.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:draftwing/services/fault/faults.dart';

import 'package:draftwing/configs/configs.dart';

part 'state.dart';
part 'emitter.dart';

class <%= cubit %> extends Cubit<<%= pascal %>State> with _<%= pascal %>Emitter {
  static <%= cubit %> c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<<%= cubit %>>(context, listen: listen);

  <%= cubit %>() : super(<%= pascal %>State.def());

<% args.forEach(function(arg){ %>
<% pModule = h.changeCase.pascal(arg.module) %>
<% cModule = h.changeCase.camel(arg.module) %>
<% model = h.changeCase.pascal(arg.model) %>
  Future<void> <%= cModule %>() async {
    _<%= cModule %>Loading();
    try {
      final data = await <%= pascal %>Repo.ins.<%= cModule %>();
      _<%= cModule %>Success(data);
    } on Fault catch (e) {
      _<%= cModule %>Failed(e);
    }
  }

<% }); %>
  void reset() => emit(<%= pascal %>State.def());
}