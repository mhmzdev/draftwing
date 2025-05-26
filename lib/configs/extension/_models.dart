part of '../configs.dart';

extension ReadingLengthX on ReadingLength {
  String get parsed => switch (this) {
    ReadingLength.oneToThree => '1-3 min (short)',
    ReadingLength.fourToFive => '4-5 min (medium)',
    ReadingLength.sizeToEight => '6-8 min (standard)',
    ReadingLength.nineToTwelve => '9-12 min (long)',
    ReadingLength.thirteenPlus => '13+ min (detailed)',
  };

  String get descriptive => switch (this) {
    ReadingLength.oneToThree => 'short',
    ReadingLength.fourToFive => 'medium',
    ReadingLength.sizeToEight => 'standard',
    ReadingLength.nineToTwelve => 'long',
    ReadingLength.thirteenPlus => 'detailed',
  };

  Color get color => switch (this) {
    ReadingLength.oneToThree => AppTheme.c.textBody,
    ReadingLength.fourToFive => AppTheme.c.warning,
    ReadingLength.sizeToEight => AppTheme.c.info,
    ReadingLength.nineToTwelve => AppTheme.c.success,
    ReadingLength.thirteenPlus => AppTheme.c.error,
  };
}
