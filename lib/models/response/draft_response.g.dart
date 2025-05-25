// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveReadingLengthAdapter extends TypeAdapter<ReadingLength> {
  @override
  final int typeId = 101;

  @override
  ReadingLength read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ReadingLength.oneToThree;
      case 1:
        return ReadingLength.fourToFive;
      case 2:
        return ReadingLength.sizeToEight;
      case 3:
        return ReadingLength.nineToTwelve;
      case 4:
        return ReadingLength.thirteenPlus;
      default:
        return ReadingLength.oneToThree;
    }
  }

  @override
  void write(BinaryWriter writer, ReadingLength obj) {
    switch (obj) {
      case ReadingLength.oneToThree:
        writer.writeByte(0);
        break;
      case ReadingLength.fourToFive:
        writer.writeByte(1);
        break;
      case ReadingLength.sizeToEight:
        writer.writeByte(2);
        break;
      case ReadingLength.nineToTwelve:
        writer.writeByte(3);
        break;
      case ReadingLength.thirteenPlus:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveReadingLengthAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveDraftResponseAdapter extends TypeAdapter<_$DraftResponseImpl> {
  @override
  final int typeId = 100;

  @override
  _$DraftResponseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DraftResponseImpl(
      title: fields[0] as String,
      tags: (fields[1] as List).cast<String>(),
      bodyMarkdown: fields[2] as String,
      readingLength: fields[3] as ReadingLength,
      generatedAt: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$DraftResponseImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.bodyMarkdown)
      ..writeByte(3)
      ..write(obj.readingLength)
      ..writeByte(4)
      ..write(obj.generatedAt)
      ..writeByte(1)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveDraftResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DraftResponseImpl _$$DraftResponseImplFromJson(Map<String, dynamic> json) =>
    _$DraftResponseImpl(
      title: json['title'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      bodyMarkdown: json['bodyMarkdown'] as String,
      readingLength: $enumDecode(_$ReadingLengthEnumMap, json['readingLength']),
      generatedAt: DateTime.parse(json['generatedAt'] as String),
    );

Map<String, dynamic> _$$DraftResponseImplToJson(_$DraftResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'tags': instance.tags,
      'bodyMarkdown': instance.bodyMarkdown,
      'readingLength': _$ReadingLengthEnumMap[instance.readingLength]!,
      'generatedAt': instance.generatedAt.toIso8601String(),
    };

const _$ReadingLengthEnumMap = {
  ReadingLength.oneToThree: 'oneToThree',
  ReadingLength.fourToFive: 'fourToFive',
  ReadingLength.sizeToEight: 'sizeToEight',
  ReadingLength.nineToTwelve: 'nineToTwelve',
  ReadingLength.thirteenPlus: 'thirteenPlus',
};
