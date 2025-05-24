import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_response.freezed.dart';
part 'draft_response.g.dart';

@freezed
class DraftResponse with _$DraftResponse {
  const factory DraftResponse({
    required String title,
    required List<String> tags,
    @JsonKey(name: 'body_markdown') required String bodyMarkdown,
    @JsonKey(name: 'published') required bool published,
  }) = _DraftResponse;

  factory DraftResponse.fromJson(Map<String, Object?> json) =>
      _$DraftResponseFromJson(json);
}
