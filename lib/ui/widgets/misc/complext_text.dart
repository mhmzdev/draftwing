import 'package:draftwing/configs/configs.dart';
import 'package:flutter/material.dart';

/// This [ComplexText] widget is designed to render text with special styling for
/// content inside curly braces {}. For instance:
///
/// "Welcome to {Draftwing}! Start writing your {first article} today."
///
/// Here, the text "Draftwing" will be styled with the [specialStyle] and
/// "first article" will be styled with the [style].
class ComplexText extends StatelessWidget {
  final String? string;
  final TextStyle? style;
  final TextStyle? specialStyle;

  const ComplexText({super.key, this.string, this.style, this.specialStyle});

  @override
  Widget build(BuildContext context) {
    if (!string.available) {
      return const SizedBox.shrink();
    }

    App.init(context);

    final textSpans = <TextSpan>[];
    final regex = RegExp(r'\{([^}]*)\}');
    var lastMatchEnd = 0;

    for (final match in regex.allMatches(string!)) {
      if (match.start > lastMatchEnd) {
        final normalText = string!.substring(lastMatchEnd, match.start);
        if (normalText.isNotEmpty) {
          textSpans.add(TextSpan(text: normalText, style: style));
        }
      }

      final specialText = match.group(1) ?? '';
      if (specialText.isNotEmpty) {
        textSpans.add(TextSpan(text: specialText, style: specialStyle));
      }

      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < string!.length) {
      final remainingText = string!.substring(lastMatchEnd);
      if (remainingText.isNotEmpty) {
        textSpans.add(TextSpan(text: remainingText, style: style));
      }
    }

    if (textSpans.isEmpty) {
      textSpans.add(TextSpan(text: string, style: style));
    }

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppText.b1('').style ?? const TextStyle(),
        children: textSpans,
      ),
    );
  }
}
