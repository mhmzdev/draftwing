import 'dart:ui';

import 'package:configs/configs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const Article._();

  factory Article({
    @JsonKey(name: 'type_of') required String typeOf,
    required int id,
    required String title,
    required String description,
    required bool published,
    @JsonKey(name: 'published_at') DateTime? publishedAt,
    required String slug,
    required String path,
    required String url,
    @JsonKey(name: 'comments_count') required int commentsCount,
    @JsonKey(name: 'public_reactions_count') required int publicReactionsCount,
    @JsonKey(name: 'page_views_count') required int pageViewsCount,
    @JsonKey(name: 'published_timestamp') String? publishedTimestamp,
    @JsonKey(name: 'body_markdown') required String bodyMarkdown,
    @JsonKey(name: 'positive_reactions_count')
    required int positiveReactionsCount,
    @JsonKey(name: 'cover_image') String? coverImage,
    @JsonKey(name: 'tag_list') required List<String> tagList,
    @JsonKey(name: 'canonical_url') required String canonicalUrl,
    @JsonKey(name: 'reading_time_minutes') required int readingTimeMinutes,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);

  bool get isDraft => !published;
  bool get isPublished => published;

  bool get hasCoverImage => coverImage != null && coverImage!.isNotEmpty;
  bool get hasTags => tagList.isNotEmpty;

  String get readingTimeText => '$readingTimeMinutes min read';

  String get shortDescription =>
      description.length > 100
          ? '${description.substring(0, 100)}...'
          : description;

  ReadingLength get readingLength {
    return switch (readingTimeMinutes) {
      >= 1 && <= 3 => ReadingLength.oneToThree,
      >= 4 && <= 5 => ReadingLength.fourToFive,
      >= 6 && <= 8 => ReadingLength.sizeToEight,
      >= 9 && <= 12 => ReadingLength.nineToTwelve,
      >= 13 => ReadingLength.thirteenPlus,
      _ => ReadingLength.oneToThree, // Default fallback for edge cases
    };
  }
}

extension ArticleStatusX on ArticleStatus {
  bool get isDraft => this == ArticleStatus.draft;
  bool get isPublished => this == ArticleStatus.published;
  bool get isArchived => this == ArticleStatus.archived;

  Color get color => switch (this) {
    ArticleStatus.draft => AppTheme.c.textBody,
    ArticleStatus.published => AppTheme.c.success,
    ArticleStatus.archived => AppTheme.c.error,
  };
}

/// [ArticleStatus] is the status of the draft on medium profile.
enum ArticleStatus {
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
