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
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Draft;

  factory Draft.fromJson(Map<String, Object?> json) => _$DraftFromJson(json);
}

extension ReadingLengthX on ReadingLength {
  String get parsed => switch (this) {
    ReadingLength.oneToThree => '1-3 min (short)',
    ReadingLength.fourToFive => '4-5 min (medium)',
    ReadingLength.sizeToEight => '6-8 min (standard)',
    ReadingLength.nineToTwelve => '9-12 min (long)',
    ReadingLength.thirteenPlus => '13+ min (detailed)',
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
