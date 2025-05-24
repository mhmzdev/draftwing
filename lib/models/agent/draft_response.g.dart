// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DraftResponseImpl _$$DraftResponseImplFromJson(Map<String, dynamic> json) =>
    _$DraftResponseImpl(
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      bodyMarkdown: json['body_markdown'] as String,
      published: json['published'] as bool,
    );

Map<String, dynamic> _$$DraftResponseImplToJson(_$DraftResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'tags': instance.tags,
      'body_markdown': instance.bodyMarkdown,
      'published': instance.published,
    };
