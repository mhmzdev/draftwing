// ignore_for_file: unused_element

part of 'cubit.dart';

class _AgentParser {
  static String generateDraft(Map<String, dynamic> data) {
    try {
      final title = data['title'] as String;
      final readingTime = data['readingTime'] as ReadingLength;
      final additionalContext = data['additionalContext'] as String?;
      final saveDraft = data['saveDraft'] as bool? ?? false;

      return '''
Please generate an article draft with the following specifications:

**Title:** $title
**Reading Time:** ${readingTime.parsed}
**Save Draft:** ${saveDraft ? 'YES' : 'NO'}
${additionalContext?.isNotEmpty == true ? '**Additional Context:**\n$additionalContext' : ''}.
''';
    } catch (e) {
      throw UnknownFault(
        'Something went wrong while parsing the data.',
        StackTrace.current,
      );
    }
  }
}
