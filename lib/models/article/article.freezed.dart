// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  @JsonKey(name: 'type_of')
  String get typeOf => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  DateTime? get publishedAt => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_count')
  int get commentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_reactions_count')
  int get publicReactionsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_views_count')
  int get pageViewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_timestamp')
  String? get publishedTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_markdown')
  String get bodyMarkdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'positive_reactions_count')
  int get positiveReactionsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_image')
  String? get coverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_list')
  List<String> get tagList => throw _privateConstructorUsedError;
  @JsonKey(name: 'canonical_url')
  String get canonicalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'reading_time_minutes')
  int get readingTimeMinutes => throw _privateConstructorUsedError;

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type_of') String typeOf,
      int id,
      String title,
      String description,
      bool published,
      @JsonKey(name: 'published_at') DateTime? publishedAt,
      String slug,
      String path,
      String url,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'public_reactions_count') int publicReactionsCount,
      @JsonKey(name: 'page_views_count') int pageViewsCount,
      @JsonKey(name: 'published_timestamp') String? publishedTimestamp,
      @JsonKey(name: 'body_markdown') String bodyMarkdown,
      @JsonKey(name: 'positive_reactions_count') int positiveReactionsCount,
      @JsonKey(name: 'cover_image') String? coverImage,
      @JsonKey(name: 'tag_list') List<String> tagList,
      @JsonKey(name: 'canonical_url') String canonicalUrl,
      @JsonKey(name: 'reading_time_minutes') int readingTimeMinutes});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeOf = null,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? published = null,
    Object? publishedAt = freezed,
    Object? slug = null,
    Object? path = null,
    Object? url = null,
    Object? commentsCount = null,
    Object? publicReactionsCount = null,
    Object? pageViewsCount = null,
    Object? publishedTimestamp = freezed,
    Object? bodyMarkdown = null,
    Object? positiveReactionsCount = null,
    Object? coverImage = freezed,
    Object? tagList = null,
    Object? canonicalUrl = null,
    Object? readingTimeMinutes = null,
  }) {
    return _then(_value.copyWith(
      typeOf: null == typeOf
          ? _value.typeOf
          : typeOf // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      publicReactionsCount: null == publicReactionsCount
          ? _value.publicReactionsCount
          : publicReactionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageViewsCount: null == pageViewsCount
          ? _value.pageViewsCount
          : pageViewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      publishedTimestamp: freezed == publishedTimestamp
          ? _value.publishedTimestamp
          : publishedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyMarkdown: null == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      positiveReactionsCount: null == positiveReactionsCount
          ? _value.positiveReactionsCount
          : positiveReactionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tagList: null == tagList
          ? _value.tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      canonicalUrl: null == canonicalUrl
          ? _value.canonicalUrl
          : canonicalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      readingTimeMinutes: null == readingTimeMinutes
          ? _value.readingTimeMinutes
          : readingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type_of') String typeOf,
      int id,
      String title,
      String description,
      bool published,
      @JsonKey(name: 'published_at') DateTime? publishedAt,
      String slug,
      String path,
      String url,
      @JsonKey(name: 'comments_count') int commentsCount,
      @JsonKey(name: 'public_reactions_count') int publicReactionsCount,
      @JsonKey(name: 'page_views_count') int pageViewsCount,
      @JsonKey(name: 'published_timestamp') String? publishedTimestamp,
      @JsonKey(name: 'body_markdown') String bodyMarkdown,
      @JsonKey(name: 'positive_reactions_count') int positiveReactionsCount,
      @JsonKey(name: 'cover_image') String? coverImage,
      @JsonKey(name: 'tag_list') List<String> tagList,
      @JsonKey(name: 'canonical_url') String canonicalUrl,
      @JsonKey(name: 'reading_time_minutes') int readingTimeMinutes});
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeOf = null,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? published = null,
    Object? publishedAt = freezed,
    Object? slug = null,
    Object? path = null,
    Object? url = null,
    Object? commentsCount = null,
    Object? publicReactionsCount = null,
    Object? pageViewsCount = null,
    Object? publishedTimestamp = freezed,
    Object? bodyMarkdown = null,
    Object? positiveReactionsCount = null,
    Object? coverImage = freezed,
    Object? tagList = null,
    Object? canonicalUrl = null,
    Object? readingTimeMinutes = null,
  }) {
    return _then(_$ArticleImpl(
      typeOf: null == typeOf
          ? _value.typeOf
          : typeOf // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      commentsCount: null == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int,
      publicReactionsCount: null == publicReactionsCount
          ? _value.publicReactionsCount
          : publicReactionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageViewsCount: null == pageViewsCount
          ? _value.pageViewsCount
          : pageViewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      publishedTimestamp: freezed == publishedTimestamp
          ? _value.publishedTimestamp
          : publishedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyMarkdown: null == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      positiveReactionsCount: null == positiveReactionsCount
          ? _value.positiveReactionsCount
          : positiveReactionsCount // ignore: cast_nullable_to_non_nullable
              as int,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tagList: null == tagList
          ? _value._tagList
          : tagList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      canonicalUrl: null == canonicalUrl
          ? _value.canonicalUrl
          : canonicalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      readingTimeMinutes: null == readingTimeMinutes
          ? _value.readingTimeMinutes
          : readingTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl extends _Article {
  _$ArticleImpl(
      {@JsonKey(name: 'type_of') required this.typeOf,
      required this.id,
      required this.title,
      required this.description,
      required this.published,
      @JsonKey(name: 'published_at') this.publishedAt,
      required this.slug,
      required this.path,
      required this.url,
      @JsonKey(name: 'comments_count') required this.commentsCount,
      @JsonKey(name: 'public_reactions_count')
      required this.publicReactionsCount,
      @JsonKey(name: 'page_views_count') required this.pageViewsCount,
      @JsonKey(name: 'published_timestamp') this.publishedTimestamp,
      @JsonKey(name: 'body_markdown') required this.bodyMarkdown,
      @JsonKey(name: 'positive_reactions_count')
      required this.positiveReactionsCount,
      @JsonKey(name: 'cover_image') this.coverImage,
      @JsonKey(name: 'tag_list') required final List<String> tagList,
      @JsonKey(name: 'canonical_url') required this.canonicalUrl,
      @JsonKey(name: 'reading_time_minutes') required this.readingTimeMinutes})
      : _tagList = tagList,
        super._();

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  @JsonKey(name: 'type_of')
  final String typeOf;
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool published;
  @override
  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;
  @override
  final String slug;
  @override
  final String path;
  @override
  final String url;
  @override
  @JsonKey(name: 'comments_count')
  final int commentsCount;
  @override
  @JsonKey(name: 'public_reactions_count')
  final int publicReactionsCount;
  @override
  @JsonKey(name: 'page_views_count')
  final int pageViewsCount;
  @override
  @JsonKey(name: 'published_timestamp')
  final String? publishedTimestamp;
  @override
  @JsonKey(name: 'body_markdown')
  final String bodyMarkdown;
  @override
  @JsonKey(name: 'positive_reactions_count')
  final int positiveReactionsCount;
  @override
  @JsonKey(name: 'cover_image')
  final String? coverImage;
  final List<String> _tagList;
  @override
  @JsonKey(name: 'tag_list')
  List<String> get tagList {
    if (_tagList is EqualUnmodifiableListView) return _tagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagList);
  }

  @override
  @JsonKey(name: 'canonical_url')
  final String canonicalUrl;
  @override
  @JsonKey(name: 'reading_time_minutes')
  final int readingTimeMinutes;

  @override
  String toString() {
    return 'Article(typeOf: $typeOf, id: $id, title: $title, description: $description, published: $published, publishedAt: $publishedAt, slug: $slug, path: $path, url: $url, commentsCount: $commentsCount, publicReactionsCount: $publicReactionsCount, pageViewsCount: $pageViewsCount, publishedTimestamp: $publishedTimestamp, bodyMarkdown: $bodyMarkdown, positiveReactionsCount: $positiveReactionsCount, coverImage: $coverImage, tagList: $tagList, canonicalUrl: $canonicalUrl, readingTimeMinutes: $readingTimeMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.typeOf, typeOf) || other.typeOf == typeOf) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.publicReactionsCount, publicReactionsCount) ||
                other.publicReactionsCount == publicReactionsCount) &&
            (identical(other.pageViewsCount, pageViewsCount) ||
                other.pageViewsCount == pageViewsCount) &&
            (identical(other.publishedTimestamp, publishedTimestamp) ||
                other.publishedTimestamp == publishedTimestamp) &&
            (identical(other.bodyMarkdown, bodyMarkdown) ||
                other.bodyMarkdown == bodyMarkdown) &&
            (identical(other.positiveReactionsCount, positiveReactionsCount) ||
                other.positiveReactionsCount == positiveReactionsCount) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            const DeepCollectionEquality().equals(other._tagList, _tagList) &&
            (identical(other.canonicalUrl, canonicalUrl) ||
                other.canonicalUrl == canonicalUrl) &&
            (identical(other.readingTimeMinutes, readingTimeMinutes) ||
                other.readingTimeMinutes == readingTimeMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        typeOf,
        id,
        title,
        description,
        published,
        publishedAt,
        slug,
        path,
        url,
        commentsCount,
        publicReactionsCount,
        pageViewsCount,
        publishedTimestamp,
        bodyMarkdown,
        positiveReactionsCount,
        coverImage,
        const DeepCollectionEquality().hash(_tagList),
        canonicalUrl,
        readingTimeMinutes
      ]);

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article extends Article {
  factory _Article(
      {@JsonKey(name: 'type_of') required final String typeOf,
      required final int id,
      required final String title,
      required final String description,
      required final bool published,
      @JsonKey(name: 'published_at') final DateTime? publishedAt,
      required final String slug,
      required final String path,
      required final String url,
      @JsonKey(name: 'comments_count') required final int commentsCount,
      @JsonKey(name: 'public_reactions_count')
      required final int publicReactionsCount,
      @JsonKey(name: 'page_views_count') required final int pageViewsCount,
      @JsonKey(name: 'published_timestamp') final String? publishedTimestamp,
      @JsonKey(name: 'body_markdown') required final String bodyMarkdown,
      @JsonKey(name: 'positive_reactions_count')
      required final int positiveReactionsCount,
      @JsonKey(name: 'cover_image') final String? coverImage,
      @JsonKey(name: 'tag_list') required final List<String> tagList,
      @JsonKey(name: 'canonical_url') required final String canonicalUrl,
      @JsonKey(name: 'reading_time_minutes')
      required final int readingTimeMinutes}) = _$ArticleImpl;
  _Article._() : super._();

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  @JsonKey(name: 'type_of')
  String get typeOf;
  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get published;
  @override
  @JsonKey(name: 'published_at')
  DateTime? get publishedAt;
  @override
  String get slug;
  @override
  String get path;
  @override
  String get url;
  @override
  @JsonKey(name: 'comments_count')
  int get commentsCount;
  @override
  @JsonKey(name: 'public_reactions_count')
  int get publicReactionsCount;
  @override
  @JsonKey(name: 'page_views_count')
  int get pageViewsCount;
  @override
  @JsonKey(name: 'published_timestamp')
  String? get publishedTimestamp;
  @override
  @JsonKey(name: 'body_markdown')
  String get bodyMarkdown;
  @override
  @JsonKey(name: 'positive_reactions_count')
  int get positiveReactionsCount;
  @override
  @JsonKey(name: 'cover_image')
  String? get coverImage;
  @override
  @JsonKey(name: 'tag_list')
  List<String> get tagList;
  @override
  @JsonKey(name: 'canonical_url')
  String get canonicalUrl;
  @override
  @JsonKey(name: 'reading_time_minutes')
  int get readingTimeMinutes;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
