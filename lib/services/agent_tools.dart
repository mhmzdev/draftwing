import 'package:draftwing/blocs/draft/bloc.dart';
import 'package:repos/repos.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:flutter/material.dart';

class AgentTools {
  AgentTools._();

  static final _instance = AgentTools._();
  static AgentTools get ins => _instance;

  /// If you are not using tools, you can use the following schema to
  /// define the response schema. BUT, you are NOT allowed to use TOOLS
  /// and MIMETYPE in the same request.
  Schema get jsonSchema => Schema(
    SchemaType.object,
    properties: {
      'title': Schema(SchemaType.string, description: 'The article title'),
      'bodyMarkdown': Schema(
        SchemaType.string,
        description: 'The article content in markdown format',
      ),
      'tags': Schema(
        SchemaType.array,
        items: Schema(SchemaType.string),
        description: 'List of relevant tags for the article',
      ),
      'readingLength': Schema(
        SchemaType.integer,
        description: 'Estimated reading time in minutes',
        nullable: false,
      ),
    },
  );

  /// If you are not using tools, you can use the following function declaration to
  /// define the function to save the draft. BUT, use [extractJsonFromResponse] extension
  /// to parse the response. Otherwise, it will have ```json``` pattern. Which `json.decode`
  /// will not be able to parse.
  FunctionDeclaration get saveDraft => FunctionDeclaration(
    'save_draft',
    'Save a draft of the article to dev.to via api',
    parameters: {
      'title': Schema(SchemaType.string, description: 'The article title'),
      'bodyMarkdown': Schema(
        SchemaType.string,
        description: 'The article content in markdown format',
      ),
      'tags': Schema(
        SchemaType.array,
        items: Schema(SchemaType.string),
        description: 'List of relevant tags for the article',
      ),
      'readingLength': Schema(
        SchemaType.string,
        description: 'Estimated reading length category',
        enumValues: ReadingLength.values.map((e) => e.name).toList(),
        nullable: false,
      ),
    },
  );

  List<Tool> get tools => [
    Tool.functionDeclarations([saveDraft]),
  ];

  void handleFunctionCall(
    BuildContext context, {
    required String functionName,
    required Map<String, dynamic> arguments,
    Map<String, dynamic>? extra,
  }) {
    switch (functionName) {
      case 'save_draft':
        final draft = DraftResponse.fromJson({...arguments, ...?extra});
        DraftBloc.b(context).add(DraftSaveEvent(draft));
      default:
        break;
    }
  }
}
