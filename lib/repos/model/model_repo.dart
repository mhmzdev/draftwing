import 'dart:convert';

import 'package:draftwing/configs/configs.dart';
import 'package:draftwing/gen/assets/assets.gen.dart';
import 'package:draftwing/models/response/agent_response.dart';
import 'package:draftwing/models/response/draft_response.dart';
import 'package:draftwing/services/agent_tools.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:flutter/services.dart';
import 'package:uuid/uuid.dart';

part 'model_mocks.dart';
part 'model_parser.dart';
part 'model_data_provider.dart';

class ModelRepo {
  static final ModelRepo _instance = ModelRepo._();
  ModelRepo._();

  static ModelRepo get ins => _instance;

  Future<AgentResponse?> generateDraft(Map<String, dynamic> prompt) {
    final parsed = _ModelParser.generateDraft(prompt);
    return _ModelProvider.generateDraft(parsed);
  }
}
