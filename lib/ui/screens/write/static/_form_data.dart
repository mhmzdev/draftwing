part of '../write.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (!kDebugMode) {
      return {};
    }

    return {
      _FormKeys.title: 'Draft Title',
      _FormKeys.tags: ['draft', 'article', 'blog'],
      _FormKeys.readingLength: ReadingLength.fourToFive,
      _FormKeys.additionalContext: 'Draft additional context',
    };
  }
}
