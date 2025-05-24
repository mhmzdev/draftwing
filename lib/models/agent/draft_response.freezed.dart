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
  String get title => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_markdown')
  String get bodyMarkdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'published')
  bool get published => throw _privateConstructorUsedError;

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
      {String title,
      List<String> tags,
      @JsonKey(name: 'body_markdown') String bodyMarkdown,
      @JsonKey(name: 'published') bool published});
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
    Object? title = null,
    Object? tags = null,
    Object? bodyMarkdown = null,
    Object? published = null,
  }) {
    return _then(_value.copyWith(
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
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {String title,
      List<String> tags,
      @JsonKey(name: 'body_markdown') String bodyMarkdown,
      @JsonKey(name: 'published') bool published});
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
    Object? title = null,
    Object? tags = null,
    Object? bodyMarkdown = null,
    Object? published = null,
  }) {
    return _then(_$DraftResponseImpl(
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
      published: null == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DraftResponseImpl implements _DraftResponse {
  const _$DraftResponseImpl(
      {required this.title,
      required final List<String> tags,
      @JsonKey(name: 'body_markdown') required this.bodyMarkdown,
      @JsonKey(name: 'published') required this.published})
      : _tags = tags;

  factory _$DraftResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraftResponseImplFromJson(json);

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
  @JsonKey(name: 'body_markdown')
  final String bodyMarkdown;
  @override
  @JsonKey(name: 'published')
  final bool published;

  @override
  String toString() {
    return 'DraftResponse(title: $title, tags: $tags, bodyMarkdown: $bodyMarkdown, published: $published)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.bodyMarkdown, bodyMarkdown) ||
                other.bodyMarkdown == bodyMarkdown) &&
            (identical(other.published, published) ||
                other.published == published));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_tags), bodyMarkdown, published);

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

abstract class _DraftResponse implements DraftResponse {
  const factory _DraftResponse(
          {required final String title,
          required final List<String> tags,
          @JsonKey(name: 'body_markdown') required final String bodyMarkdown,
          @JsonKey(name: 'published') required final bool published}) =
      _$DraftResponseImpl;

  factory _DraftResponse.fromJson(Map<String, dynamic> json) =
      _$DraftResponseImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get tags;
  @override
  @JsonKey(name: 'body_markdown')
  String get bodyMarkdown;
  @override
  @JsonKey(name: 'published')
  bool get published;

  /// Create a copy of DraftResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraftResponseImplCopyWith<_$DraftResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
