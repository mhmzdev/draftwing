import 'dart:async';

import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/models/response/draft_response.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:draftwing/blocs/misc/cache_keys.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:hive_flutter/hive_flutter.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'state.dart';
part 'events.dart';
part 'emitter.dart';

class DraftBloc extends Bloc<DraftEvent, DraftState> with _DraftEmitter {
  static DraftBloc b(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<DraftBloc>(context, listen: listen);

  DraftBloc() : super(DraftState.def()) {
    on<DraftDeleteEvent>(_onDelete);
    on<DraftSaveEvent>(_onSaveDraft);
    on<DraftFetchEvent>(_onFetchDrafts);
    on<DraftSetupCountEvent>(_onSetupDraftsCount);
    on<DraftIncrementCountEvent>(_onIncrementDraftsCount);
    on<DraftResetSaveEvent>(_onResetSaveDraft);
    on<DraftResetEvent>(_onReset);
  }

  Future<void> _onDelete(
    DraftDeleteEvent event,
    Emitter<DraftState> emit,
  ) async {
    _deleteLoading(emit);
    try {
      final index = state.draftsList.indexWhere(
        (draft) => draft.id == event.id,
      );
      await _DraftProvider.delete(index);
      _deleteSuccess(emit);
    } on Fault catch (e) {
      _deleteFailed(e, emit);
    }
  }

  Future<void> _onSaveDraft(
    DraftSaveEvent event,
    Emitter<DraftState> emit,
  ) async {
    _saveDraftLoading(emit);
    try {
      final parsed = event.draft.copyWith(
        tags: event.draft.tags.map((tag) => tag.replaceAll('-', '')).toList(),
      );
      await _DraftProvider.saveDraft(parsed, isEdit: event.isEdit);
      _saveDraftSuccess(emit);
    } on Fault catch (e) {
      _saveDraftFailed(e, emit);
    }
  }

  Future<void> _onFetchDrafts(
    DraftFetchEvent event,
    Emitter<DraftState> emit,
  ) async {
    if (event.force) {
      _draftsSuccess(const [], emit);
    }
    _draftsLoading(emit);
    try {
      final data = await _DraftProvider.drafts();
      _draftsSuccess(data, emit);
    } on Fault catch (e) {
      _draftsFailed(e, emit);
    }
  }

  Future<void> _onSetupDraftsCount(
    DraftSetupCountEvent event,
    Emitter<DraftState> emit,
  ) async {
    await Hive.openBox(AppHiveKeys.app);
    final box = Hive.box(AppHiveKeys.app);
    final count = box.get(AppHiveKeys.draftsGeneratedCount) ?? 0;
    box.put(AppHiveKeys.draftsGeneratedCount, count + 1);
    emit(state.copyWith(draftsCount: count + 1));
  }

  void _onIncrementDraftsCount(
    DraftIncrementCountEvent event,
    Emitter<DraftState> emit,
  ) => emit(state.copyWith(draftsCount: state.draftsCount + 1));

  void _onResetSaveDraft(DraftResetSaveEvent event, Emitter<DraftState> emit) =>
      emit(state.copyWith(saveDraft: BlocState()));

  void _onReset(DraftResetEvent event, Emitter<DraftState> emit) =>
      emit(DraftState.def());
}
