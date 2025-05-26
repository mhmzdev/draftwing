import 'package:repos/misc/cache_keys.dart';
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
