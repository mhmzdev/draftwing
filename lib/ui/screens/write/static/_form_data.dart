part of '../write.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (!kDebugMode) {
      return {};
    }

    return {
      _FormKeys.title: 'Agentic Flutter Apps',
      _FormKeys.tags: ['flutter', 'ai', 'agentic'],
      _FormKeys.readingTime: ReadingLength.oneToThree,
      _FormKeys.additionalContext: '''
- Keep it simple
- Introduce Vertex AI
- Share codelabs from flutter.dev links
- Comparison between Agentic Workflows and Agentic App.
''',
    };
  }
}
