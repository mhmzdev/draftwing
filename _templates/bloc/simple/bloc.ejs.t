---
to: lib/blocs/<%= h.changeCase.snake(name) %>/bloc.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% bloc = pascal+"Bloc" %>
<% pmodel = h.changeCase.pascal(model) %>
import 'dart:async';

import 'package:draftwing/models/<%= h.changeCase.snake(model) %>/<%= h.changeCase.snake(model) %>.dart';
import 'package:draftwing/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_repo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/services/fault/faults.dart';

part 'events.dart';

class <%= bloc %> extends Bloc<<%= pascal %>Event, BlocState<<%= pmodel %>>> {
  static <%= bloc %> b(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<<%= bloc %>>(context, listen: listen);

  <%= bloc %>() : super(BlocState<<%= pmodel %>>()) {
    on<<%= pascal %>FetchEvent>(_onFetch);
    on<<%= pascal %>ResetEvent>(_onReset);
  }

  Future<void> _onFetch(
    <%= pascal %>FetchEvent event,
    Emitter<BlocState<<%= pmodel %>>> emit,
  ) async {
    emit(state.copyWith(action: BlocAction.loading));
    try {
      final data = await <%= pascal %>Repo.ins.fetch();
      emit(state.copyWith(action: BlocAction.success, data: data));
    } on Fault catch (e) {
      emit(state.copyWith(action: BlocAction.failed, fault: e));
    }
  }

  void _onReset(
    <%= pascal %>ResetEvent event,
    Emitter<BlocState<<%= pmodel %>>> emit,
  ) {
    emit(BlocState<<%= pmodel %>>());
  }
}
// end-bloc