// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      typeOf: json['type_of'] as String,
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      published: json['published'] as bool,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      slug: json['slug'] as String,
      path: json['path'] as String,
      url: json['url'] as String,
      commentsCount: (json['comments_count'] as num).toInt(),
      publicReactionsCount: (json['public_reactions_count'] as num).toInt(),
      pageViewsCount: (json['page_views_count'] as num).toInt(),
      publishedTimestamp: json['published_timestamp'] as String?,
      bodyMarkdown: json['body_markdown'] as String,
      positiveReactionsCount: (json['positive_reactions_count'] as num).toInt(),
      coverImage: json['cover_image'] as String?,
      tagList:
          (json['tag_list'] as List<dynamic>).map((e) => e as String).toList(),
      canonicalUrl: json['canonical_url'] as String,
      readingTimeMinutes: (json['reading_time_minutes'] as num).toInt(),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'type_of': instance.typeOf,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'published': instance.published,
      'published_at': instance.publishedAt?.toIso8601String(),
      'slug': instance.slug,
      'path': instance.path,
      'url': instance.url,
      'comments_count': instance.commentsCount,
      'public_reactions_count': instance.publicReactionsCount,
      'page_views_count': instance.pageViewsCount,
      'published_timestamp': instance.publishedTimestamp,
      'body_markdown': instance.bodyMarkdown,
      'positive_reactions_count': instance.positiveReactionsCount,
      'cover_image': instance.coverImage,
      'tag_list': instance.tagList,
      'canonical_url': instance.canonicalUrl,
      'reading_time_minutes': instance.readingTimeMinutes,
    };
