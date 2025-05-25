import 'dart:async';

import 'package:draftwing/models/response/draft_response.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:draftwing/blocs/misc/cache_keys.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:draftwing/configs/configs.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'emitter.dart';
part 'state.dart';

class DraftCubit extends Cubit<DraftState> with _DraftEmitter {
  static DraftCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<DraftCubit>(context, listen: listen);
  DraftCubit() : super(DraftState.def());

  Future<void> delete(String id) async {
    _deleteLoading();
    try {
      final index = state.draftsList.indexWhere((draft) => draft.id == id);
      await _DraftProvider.delete(index);
      _deleteSuccess();
    } on Fault catch (e) {
      _deleteFailed(e);
    }
  }

  Future<void> saveDraft(DraftResponse draft, {bool isEdit = false}) async {
    _saveDraftLoading();
    try {
      final parsed = draft.copyWith(
        tags: draft.tags.map((tag) => tag.replaceAll('-', '')).toList(),
      );
      await _DraftProvider.saveDraft(parsed, isEdit: isEdit);
      _saveDraftSuccess();
    } on Fault catch (e) {
      _saveDraftFailed(e);
    }
  }

  Future<void> drafts({bool force = false}) async {
    if (force) {
      emit(state.copyWith(drafts: CubitState(), draftsList: []));
    }
    _draftsLoading();
    try {
      final data = await _DraftProvider.drafts();
      _draftsSuccess(data);
    } on Fault catch (e) {
      _draftsFailed(e);
    }
  }

  void setupDraftsCount() async {
    await Hive.openBox('app');
    final box = Hive.box('app');
    final count = box.get(AppHiveKeys.draftsGeneratedCount) ?? 0;
    box.put(AppHiveKeys.draftsGeneratedCount, count + 1);
    emit(state.copyWith(draftsCount: count));
  }

  void incrementDraftsCount() =>
      emit(state.copyWith(draftsCount: state.draftsCount + 1));

  void resetSaveDraft() => emit(state.copyWith(saveDraft: CubitState()));

  void reset() => _reset();
}
