part of '../configs_base.dart';

extension SuperNullableString<T> on String? {
  bool get available => this != null && this!.isNotEmpty;
}

extension SuperString<T> on String {
  Future<T?> push<V>(BuildContext context, {Object? arguments}) =>
      Navigator.pushNamed<T?>(context, this, arguments: arguments);

  Future<void> pushReplace(BuildContext context, {Object? arguments}) =>
      Navigator.pushReplacementNamed(context, this, arguments: arguments);

  Future<void> pop<Type extends Object?>(
    BuildContext context, [
    T? result,
  ]) async => Navigator.pop(context, result);

  Future<void> popUntil(BuildContext context) async =>
      Navigator.popUntil(context, ModalRoute.withName(this));

  bool sameRoute() =>
      NavigationHistoryObserver().history.isNotEmpty &&
      NavigationHistoryObserver().top?.settings.name == this;

  String get splitError => split(': ').lastOrNull ?? 'Unknown error';

  String get extractJsonFromResponse {
    // Remove markdown code block markers
    String cleaned = trim();

    // Check for ```json ... ``` pattern
    if (cleaned.startsWith('```json') && cleaned.endsWith('```')) {
      cleaned = cleaned.substring(7); // Remove ```json
      cleaned = cleaned.substring(0, cleaned.length - 3); // Remove ```
    }
    // Check for ``` ... ``` pattern (without json specifier)
    else if (cleaned.startsWith('```') && cleaned.endsWith('```')) {
      cleaned = cleaned.substring(3); // Remove ```
      cleaned = cleaned.substring(0, cleaned.length - 3); // Remove ```
    }

    return cleaned.trim();
  }
}
