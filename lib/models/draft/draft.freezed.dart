// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Draft _$DraftFromJson(Map<String, dynamic> json) {
  return _Draft.fromJson(json);
}

/// @nodoc
mixin _$Draft {
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'reading_length')
  ReadingLength get readingLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_context')
  String get additionalContext => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Draft to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DraftCopyWith<Draft> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftCopyWith<$Res> {
  factory $DraftCopyWith(Draft value, $Res Function(Draft) then) =
      _$DraftCopyWithImpl<$Res, Draft>;
  @useResult
  $Res call(
      {String uid,
      String title,
      List<String> tags,
      @JsonKey(name: 'reading_length') ReadingLength readingLength,
      @JsonKey(name: 'additional_context') String additionalContext,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$DraftCopyWithImpl<$Res, $Val extends Draft>
    implements $DraftCopyWith<$Res> {
  _$DraftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? tags = null,
    Object? readingLength = null,
    Object? additionalContext = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingLength: null == readingLength
          ? _value.readingLength
          : readingLength // ignore: cast_nullable_to_non_nullable
              as ReadingLength,
      additionalContext: null == additionalContext
          ? _value.additionalContext
          : additionalContext // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraftImplCopyWith<$Res> implements $DraftCopyWith<$Res> {
  factory _$$DraftImplCopyWith(
          _$DraftImpl value, $Res Function(_$DraftImpl) then) =
      __$$DraftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String title,
      List<String> tags,
      @JsonKey(name: 'reading_length') ReadingLength readingLength,
      @JsonKey(name: 'additional_context') String additionalContext,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$DraftImplCopyWithImpl<$Res>
    extends _$DraftCopyWithImpl<$Res, _$DraftImpl>
    implements _$$DraftImplCopyWith<$Res> {
  __$$DraftImplCopyWithImpl(
      _$DraftImpl _value, $Res Function(_$DraftImpl) _then)
      : super(_value, _then);

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? title = null,
    Object? tags = null,
    Object? readingLength = null,
    Object? additionalContext = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DraftImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      readingLength: null == readingLength
          ? _value.readingLength
          : readingLength // ignore: cast_nullable_to_non_nullable
              as ReadingLength,
      additionalContext: null == additionalContext
          ? _value.additionalContext
          : additionalContext // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DraftImpl implements _Draft {
  const _$DraftImpl(
      {required this.uid,
      required this.title,
      required final List<String> tags,
      @JsonKey(name: 'reading_length') required this.readingLength,
      @JsonKey(name: 'additional_context') required this.additionalContext,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _tags = tags;

  factory _$DraftImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraftImplFromJson(json);

  @override
  final String uid;
  @override
  final String title;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'reading_length')
  final ReadingLength readingLength;
  @override
  @JsonKey(name: 'additional_context')
  final String additionalContext;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'Draft(uid: $uid, title: $title, tags: $tags, readingLength: $readingLength, additionalContext: $additionalContext, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.readingLength, readingLength) ||
                other.readingLength == readingLength) &&
            (identical(other.additionalContext, additionalContext) ||
                other.additionalContext == additionalContext) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      title,
      const DeepCollectionEquality().hash(_tags),
      readingLength,
      additionalContext,
      createdAt,
      updatedAt);

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftImplCopyWith<_$DraftImpl> get copyWith =>
      __$$DraftImplCopyWithImpl<_$DraftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DraftImplToJson(
      this,
    );
  }
}

abstract class _Draft implements Draft {
  const factory _Draft(
          {required final String uid,
          required final String title,
          required final List<String> tags,
          @JsonKey(name: 'reading_length')
          required final ReadingLength readingLength,
          @JsonKey(name: 'additional_context')
          required final String additionalContext,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$DraftImpl;

  factory _Draft.fromJson(Map<String, dynamic> json) = _$DraftImpl.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override
  List<String> get tags;
  @override
  @JsonKey(name: 'reading_length')
  ReadingLength get readingLength;
  @override
  @JsonKey(name: 'additional_context')
  String get additionalContext;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of Draft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraftImplCopyWith<_$DraftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
