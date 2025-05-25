import 'dart:async';
import 'dart:convert';

import 'package:draftwing/gen/assets/assets.gen.dart';
import 'package:draftwing/models/agent/agent_response.dart';
import 'package:draftwing/models/agent/draft_response.dart';
import 'package:draftwing/models/article/article.dart';
import 'package:draftwing/services/agent_tools.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';

import 'package:flutter/material.dart';
import 'package:brain/brain.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:configs/configs.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'emitter.dart';
part 'state.dart';

class AgentCubit extends Cubit<AgentState> with _AgentEmitter {
  static AgentCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<AgentCubit>(context, listen: listen);
  AgentCubit() : super(AgentState.def());

  Future<void> generateDraft(Map<String, dynamic> payload) async {
    _generateDraftLoading();
    try {
      final parsed = _AgentParser.generateDraft(payload);
      final data = await _AgentProvider.generateDraft(parsed);
      _generateDraftSuccess(data);
    } on Fault catch (e) {
      _generateDraftFailed(e);
    }
  }

  void reset() => _reset();
}
