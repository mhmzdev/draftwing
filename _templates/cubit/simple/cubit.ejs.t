---
to: lib/blocs/<%= h.changeCase.snake(name) %>/cubit.dart
---
<% pascal = h.changeCase.pascal(name) %>
<% pmodel = h.changeCase.pascal(model) %>
import 'dart:async';

import 'package:draftwing/models/<%= h.changeCase.snake(model) %>/<%= h.changeCase.snake(model) %>.dart';
import 'package:draftwing/repos/<%= h.changeCase.snake(name) %>/<%= h.changeCase.snake(name) %>_repo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/services/fault/faults.dart';


class <%= pascal %>Cubit extends Cubit<CubitState<<%= pmodel %>>> {
  static <%= pascal %>Cubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<<%= pascal %>Cubit>(context, listen: listen);

  <%= pascal %>Cubit() : super(CubitState<<%= pmodel %>>());

  Future<void> fetch() async {
    emit(state.copyWith(action: CubitAction.loading));
    try {
      final data = await <%= pascal %>Repo.ins.fetch();
      emit(state.copyWith(action: CubitAction.success, data: data));
    } on Fault catch (e) {
      emit(
        state.copyWith(
          action: CubitAction.failed,
          fault: e,
        ),
      );
    }
  }
}
// end-cubit
