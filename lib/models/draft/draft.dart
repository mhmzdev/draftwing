import 'dart:ui';

import 'package:configs/configs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft.freezed.dart';
part 'draft.g.dart';

@freezed
class Draft with _$Draft {
  const factory Draft({
    required String uid,
    required String title,
    required List<String> tags,
    @JsonKey(name: 'reading_length') required ReadingLength readingLength,
    @JsonKey(name: 'additional_context') required String additionalContext,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required DraftStatus status,
  }) = _Draft;

  factory Draft.fromJson(Map<String, Object?> json) => _$DraftFromJson(json);
}

extension DraftStatusX on DraftStatus {
  bool get isDraft => this == DraftStatus.draft;
  bool get isPublished => this == DraftStatus.published;
  bool get isArchived => this == DraftStatus.archived;

  Color get color => switch (this) {
    DraftStatus.draft => AppTheme.c.textBody,
    DraftStatus.published => AppTheme.c.success,
    DraftStatus.archived => AppTheme.c.error,
  };
}

/// [DraftStatus] is the status of the draft on medium profile.
enum DraftStatus {
  // The draft is not published yet.
  draft,

  // The draft is published as a public article.
  published,

  // The draft is archived.
  archived,
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
enum ReadingLength {
  oneToThree,
  fourToFive,
  sizeToEight,
  nineToTwelve,
  thirteenPlus,
}
