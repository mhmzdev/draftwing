import 'dart:async';

import 'package:draftwing/models/response/agent_response.dart';
import 'package:draftwing/repos/model/model_repo.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:draftwing/configs/configs.dart';

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
      final data = await ModelRepo.ins.generateDraft(event.payload);
      _generateDraftSuccess(data, emit);
    } on Fault catch (e) {
      _generateDraftFailed(e, emit);
    }
  }

  void _onReset(ModelResetEvent event, Emitter<ModelState> emit) =>
      emit(ModelState.def());
}
