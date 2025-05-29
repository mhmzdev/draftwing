// ignore_for_file: unused_element

part of 'model_repo.dart';
class _ModelParser {
  static String generateDraft(Map<String, dynamic> data) {
    try {
      final title = data['title'] as String;
      final readingLength = data['readingLength'] as ReadingLength;
      final additionalContext = data['additionalContext'] as String?;
      final saveDraft = data['saveDraft'] as bool? ?? false;

      return '''
Please generate an article draft with the following specifications:

**Title:** $title
**Reading Length:** ${readingLength.parsed}
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
