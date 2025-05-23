// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DraftImpl _$$DraftImplFromJson(Map<String, dynamic> json) => _$DraftImpl(
      uid: json['uid'] as String,
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      readingLength:
          $enumDecode(_$ReadingLengthEnumMap, json['reading_length']),
      additionalContext: json['additional_context'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$DraftImplToJson(_$DraftImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'tags': instance.tags,
      'reading_length': _$ReadingLengthEnumMap[instance.readingLength]!,
      'additional_context': instance.additionalContext,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$ReadingLengthEnumMap = {
  ReadingLength.oneToThree: 'oneToThree',
  ReadingLength.fourToFive: 'fourToFive',
  ReadingLength.sizeToEight: 'sizeToEight',
  ReadingLength.nineToTwelve: 'nineToTwelve',
  ReadingLength.thirteenPlus: 'thirteenPlus',
};
