part of 'cubit.dart';

class _AgentProvider {
  static Future<DraftResponse?> generateDraft(String prompt) async {
    try {
      final model = await getModel();

      final response = await model.generateContent([Content.text(prompt)]);

      if (response.text == null) {
        throw UnknownFault('No response generated', StackTrace.current);
      }

      if (response.text.available) {
        final raw = json.decode(response.text!);
        return DraftResponse.fromJson(raw);
      }

      return null;
    } on ServerException catch (e) {
      throw UnknownFault(e.message, StackTrace.current);
    } catch (e, st) {
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<GenerativeModel> getModel() async {
    final promptFile = await rootBundle.loadString(Assets.prompt);

    final model = FirebaseVertexAI.instance.generativeModel(
      model: 'gemini-2.0-flash',
      systemInstruction: Content.system(promptFile),
      generationConfig: GenerationConfig(
        responseMimeType: 'application/json',
        responseSchema: AgentTools.ins.jsonSchema,
      ),
      tools: AgentTools.ins.tools,
    );
    return model;
  }
}
