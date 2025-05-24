import 'package:draftwing/models/agent/draft_response.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_response.freezed.dart';
part 'agent_response.g.dart';

@freezed
class AgentResponse with _$AgentResponse {
  const factory AgentResponse({
    required DraftResponse draft,
    @JsonKey(includeFromJson: false) List<FunctionCall>? functionCalls,
  }) = _AgentResponse;

  factory AgentResponse.fromJson(Map<String, Object?> json) =>
      _$AgentResponseFromJson(json);
}
