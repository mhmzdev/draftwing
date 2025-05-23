part of '../home.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (!kDebugMode) {
      return {};
    }

    return {
      _FormKeys.title: 'Draft Title',
      _FormKeys.tags: ['Draft', 'Article', 'Blog'],
      _FormKeys.readingLength: ReadingLength.fourToFive,
      _FormKeys.additionalContext: 'Draft additional context',
    };
  }
}
