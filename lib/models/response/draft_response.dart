import 'dart:ui';

import 'package:draftwing/blocs/misc/cache_keys.dart';
import 'package:draftwing/configs/configs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'draft_response.freezed.dart';
part 'draft_response.g.dart';

@freezed
class DraftResponse with _$DraftResponse {
  const DraftResponse._();

  @HiveType(typeId: AppHiveTypes.draft, adapterName: 'HiveDraftResponseAdapter')
  factory DraftResponse({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required List<String> tags,
    @HiveField(3) required String bodyMarkdown,
    @HiveField(4) required ReadingLength readingLength,
    @HiveField(5) required DateTime generatedAt,
  }) = _DraftResponse;

  factory DraftResponse.fromJson(Map<String, Object?> json) =>
      _$DraftResponseFromJson(json);
}

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

/// [ReadingLength] is the reading length as per
/// medium article. These are in minutes.
@HiveType(
  typeId: AppHiveTypes.readingLength,
  adapterName: 'HiveReadingLengthAdapter',
)
enum ReadingLength {
  @HiveField(0)
  oneToThree,
  @HiveField(1)
  fourToFive,
  @HiveField(2)
  sizeToEight,
  @HiveField(3)
  nineToTwelve,
  @HiveField(4)
  thirteenPlus,
}
