import 'dart:async';
import 'dart:convert';

import 'package:draftwing/gen/assets/assets.gen.dart';
import 'package:draftwing/models/response/agent_response.dart';
import 'package:draftwing/models/response/draft_response.dart';
import 'package:draftwing/services/agent_tools.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:uuid/uuid.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:draftwing/configs/configs.dart';

part 'data_provider.dart';
part 'data_parser.dart';
part 'data_mocks.dart';
part 'emitter.dart';
part 'state.dart';

@Deprecated('Use ModelBloc instead')
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
