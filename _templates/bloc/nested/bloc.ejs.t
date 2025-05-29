---
to: lib/blocs/<%= h.changeCase.snake(name) %>/bloc.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% bloc = pascal+"Bloc" %>
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
import 'package:draftwing/blocs/misc/cache_keys.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:draftwing/configs/configs.dart';

part 'state.dart';
part 'events.dart';
part 'emitter.dart';

class <%= bloc %> extends Bloc<<%= pascal %>Event, <%= pascal %>State> with _<%= pascal %>Emitter {
  static <%= bloc %> b(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<<%= bloc %>>(context, listen: listen);

  <%= bloc %>() : super(<%= pascal %>State.def()) {
<% args.forEach(function(arg){ %>
<% cModule = h.changeCase.camel(arg.module) %>
<% pascal_module = h.changeCase.pascal(arg.module) %>
    on<<%= pascal %><%= pascal_module %>Event>(_on<%= pascal_module %>);
<% }); %>
    on<<%= pascal %>ResetEvent>(_onReset);
  }

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
      final data = await <%= pascal %>Repo.ins.<%= cModule %>();
      _<%= cModule %>Success(data, emit);
    } on Fault catch (e) {
      _<%= cModule %>Failed(e, emit);
    }
  }
<% }); %>

  void _onReset(<%= pascal %>ResetEvent event, Emitter<<%= pascal %>State> emit) => emit(<%= pascal %>State.def());
}