import 'dart:async';
import 'dart:convert';

import 'package:draftwing/gen/assets/assets.gen.dart';
import 'package:repos/repos.dart';
import 'package:draftwing/services/agent_tools.dart';

import 'package:fault/fault.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:draftwing/configs/configs.dart';
import 'package:uuid/uuid.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'state.dart';
part 'events.dart';
part 'emitter.dart';

class ModelBloc extends Bloc<ModelEvent, ModelState> with _ModelEmitter {
  static ModelBloc b(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<ModelBloc>(context, listen: listen);

  ModelBloc() : super(ModelState.def()) {
    on<ModelGenerateDraftEvent>(_onGenerateDraft);
    on<ModelResetEvent>(_onReset);
  }

  Future<void> _onGenerateDraft(
    ModelGenerateDraftEvent event,
    Emitter<ModelState> emit,
  ) async {
    _generateDraftLoading(emit);
    try {
      final parsed = _ModelParser.generateDraft(event.payload);
      final data = await _ModelProvider.generateDraft(parsed);
      _generateDraftSuccess(data, emit);
    } on Fault catch (e) {
      _generateDraftFailed(e, emit);
    }
  }

  void _onReset(ModelResetEvent event, Emitter<ModelState> emit) =>
      emit(ModelState.def());
}
