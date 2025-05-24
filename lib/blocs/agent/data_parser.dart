// ignore_for_file: unused_element

part of 'cubit.dart';

class _AgentParser {
  static String generateDraft(Map<String, dynamic> data) {
    try {
      final title = data['title'] as String;
      final readingTime = data['readingTime'] as ReadingLength;
      final additionalContext = data['additionalContext'] as String?;

      return '''
Please generate an article draft with the following specifications:

**Title:** $title
**Reading Time:** ${readingTime.parsed}
${additionalContext?.isNotEmpty == true ? '**Additional Context:**\n$additionalContext' : ''}

      Generate the draft and use the preview_draft tool to display it.
      ''';
    } catch (e) {
      throw UnknownFault(
        'Something went wrong while parsing the data.',
        StackTrace.current,
      );
    }
  }
}
