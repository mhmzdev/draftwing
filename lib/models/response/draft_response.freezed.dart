// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DraftResponse _$DraftResponseFromJson(Map<String, dynamic> json) {
  return _DraftResponse.fromJson(json);
}

/// @nodoc
mixin _$DraftResponse {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String> get tags => throw _privateConstructorUsedError;
  @HiveField(3)
  String get bodyMarkdown => throw _privateConstructorUsedError;
  @HiveField(4)
  ReadingLength get readingLength => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime get generatedAt => throw _privateConstructorUsedError;

  /// Serializes this DraftResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DraftResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DraftResponseCopyWith<DraftResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftResponseCopyWith<$Res> {
  factory $DraftResponseCopyWith(
          DraftResponse value, $Res Function(DraftResponse) then) =
      _$DraftResponseCopyWithImpl<$Res, DraftResponse>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) List<String> tags,
      @HiveField(3) String bodyMarkdown,
      @HiveField(4) ReadingLength readingLength,
      @HiveField(5) DateTime generatedAt});
}

/// @nodoc
class _$DraftResponseCopyWithImpl<$Res, $Val extends DraftResponse>
    implements $DraftResponseCopyWith<$Res> {
  _$DraftResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DraftResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tags = null,
    Object? bodyMarkdown = null,
    Object? readingLength = null,
    Object? generatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bodyMarkdown: null == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      readingLength: null == readingLength
          ? _value.readingLength
          : readingLength // ignore: cast_nullable_to_non_nullable
              as ReadingLength,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraftResponseImplCopyWith<$Res>
    implements $DraftResponseCopyWith<$Res> {
  factory _$$DraftResponseImplCopyWith(
          _$DraftResponseImpl value, $Res Function(_$DraftResponseImpl) then) =
      __$$DraftResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) List<String> tags,
      @HiveField(3) String bodyMarkdown,
      @HiveField(4) ReadingLength readingLength,
      @HiveField(5) DateTime generatedAt});
}

/// @nodoc
class __$$DraftResponseImplCopyWithImpl<$Res>
    extends _$DraftResponseCopyWithImpl<$Res, _$DraftResponseImpl>
    implements _$$DraftResponseImplCopyWith<$Res> {
  __$$DraftResponseImplCopyWithImpl(
      _$DraftResponseImpl _value, $Res Function(_$DraftResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DraftResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tags = null,
    Object? bodyMarkdown = null,
    Object? readingLength = null,
    Object? generatedAt = null,
  }) {
    return _then(_$DraftResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bodyMarkdown: null == bodyMarkdown
          ? _value.bodyMarkdown
          : bodyMarkdown // ignore: cast_nullable_to_non_nullable
              as String,
      readingLength: null == readingLength
          ? _value.readingLength
          : readingLength // ignore: cast_nullable_to_non_nullable
              as ReadingLength,
      generatedAt: null == generatedAt
          ? _value.generatedAt
          : generatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: AppHiveTypes.draft, adapterName: 'HiveDraftResponseAdapter')
class _$DraftResponseImpl extends _DraftResponse {
  _$DraftResponseImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required final List<String> tags,
      @HiveField(3) required this.bodyMarkdown,
      @HiveField(4) required this.readingLength,
      @HiveField(5) required this.generatedAt})
      : _tags = tags,
        super._();

  factory _$DraftResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraftResponseImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  final List<String> _tags;
  @override
  @HiveField(2)
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @HiveField(3)
  final String bodyMarkdown;
  @override
  @HiveField(4)
  final ReadingLength readingLength;
  @override
  @HiveField(5)
  final DateTime generatedAt;

  @override
  String toString() {
    return 'DraftResponse(id: $id, title: $title, tags: $tags, bodyMarkdown: $bodyMarkdown, readingLength: $readingLength, generatedAt: $generatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.bodyMarkdown, bodyMarkdown) ||
                other.bodyMarkdown == bodyMarkdown) &&
            (identical(other.readingLength, readingLength) ||
                other.readingLength == readingLength) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_tags),
      bodyMarkdown,
      readingLength,
      generatedAt);

  /// Create a copy of DraftResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftResponseImplCopyWith<_$DraftResponseImpl> get copyWith =>
      __$$DraftResponseImplCopyWithImpl<_$DraftResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DraftResponseImplToJson(
      this,
    );
  }
}

abstract class _DraftResponse extends DraftResponse {
  factory _DraftResponse(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) required final List<String> tags,
      @HiveField(3) required final String bodyMarkdown,
      @HiveField(4) required final ReadingLength readingLength,
      @HiveField(5) required final DateTime generatedAt}) = _$DraftResponseImpl;
  _DraftResponse._() : super._();

  factory _DraftResponse.fromJson(Map<String, dynamic> json) =
      _$DraftResponseImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  List<String> get tags;
  @override
  @HiveField(3)
  String get bodyMarkdown;
  @override
  @HiveField(4)
  ReadingLength get readingLength;
  @override
  @HiveField(5)
  DateTime get generatedAt;

  /// Create a copy of DraftResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraftResponseImplCopyWith<_$DraftResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
