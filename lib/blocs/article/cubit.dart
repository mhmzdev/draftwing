import 'dart:async';

import 'package:draftwing/models/agent/draft_response.dart';
import 'package:draftwing/models/article/article.dart';

import 'package:flutter/material.dart';
import 'package:brain/brain.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:configs/configs.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'emitter.dart';
part 'state.dart';

class ArticleCubit extends Cubit<ArticleState> with _ArticleEmitter {
  static ArticleCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<ArticleCubit>(context, listen: listen);
  ArticleCubit() : super(ArticleState.def());

  Future<void> published({bool force = false}) async {
    if (force) {
      emit(state.copyWith(published: CubitState(), publishedList: []));
    }
    _publishedLoading();
    try {
      final data = await _ArticleProvider.published();
      _publishedSuccess(data);
    } on Fault catch (e) {
      _publishedFailed(e);
    }
  }

  Future<void> drafts({bool force = false}) async {
    if (force) {
      emit(state.copyWith(drafts: CubitState(), draftsList: []));
    }
    _draftsLoading();
    try {
      final data = await _ArticleProvider.drafts();
      _draftsSuccess(data);
    } on Fault catch (e) {
      _draftsFailed(e);
    }
  }

  Future<void> create(DraftResponse draft) async {
    _createLoading();
    try {
      final parsed = draft.copyWith(
        tags: draft.tags.map((tag) => tag.replaceAll('-', '')).toList(),
      );
      await _ArticleProvider.create(parsed);
      _createSuccess();
    } on Fault catch (e) {
      _createFailed(e);
    }
  }

  void resetCreate() => emit(state.copyWith(create: CubitState()));

  void resetPublished() => _publishedSuccess([]);

  void reset() => _reset();
}
