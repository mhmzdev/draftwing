part of 'cubit.dart';

class _AgentProvider {
  static Future<AgentResponse?> generateDraft(String prompt) async {
    try {
      final model = await getModel();

      final response = await model.generateContent([Content.text(prompt)]);

      if (response.text.available ||
          response.functionCalls.toList().available) {
        /// In case of function calling, we need to parse the response
        /// and return the draft and function calls
        ///
        /// This is because we are NOT allowed to use TOOLS and MIMETYPE
        /// in the same request. Hence, we are letting the model decide
        /// whether to use the tools or not.
        var raw = <String, dynamic>{
          'id': const Uuid().v4(),
          'generatedAt': DateTime.now().toIso8601String(),
        };
        if (response.text.available) {
          final cleaned = response.text!.extractJsonFromResponse;
          raw = {...raw, ...json.decode(cleaned)};
        }
        if (response.functionCalls.toList().available) {
          raw = {...raw, ...response.functionCalls.toList().first.args};
        }
        final draft = DraftResponse.fromJson(raw);
        return AgentResponse(
          draft: draft,
          functionCalls: response.functionCalls.toList(),
        );
      }

      return null;
    } on ServerException catch (e) {
      throw UnknownFault(e.message, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<GenerativeModel> getModel() async {
    try {
      final promptFile = await rootBundle.loadString(Assets.prompt);

      final model = FirebaseVertexAI.instance.generativeModel(
        model: 'gemini-2.0-flash',
        systemInstruction: Content.system(promptFile),

        /// If you are not using tools, you can use the following config to
        /// define the response schema.
        // generationConfig: GenerationConfig(
        //   responseMimeType: 'application/json',
        //   responseSchema: AgentTools.ins.jsonSchema,
        // ),
        tools: AgentTools.ins.tools,
        toolConfig: ToolConfig(
          functionCallingConfig: FunctionCallingConfig.auto(),
        ),
      );
      return model;
    } catch (e) {
      throw UnknownFault(
        'Something went wrong during model generation!',
        StackTrace.current,
      );
    }
  }
}
