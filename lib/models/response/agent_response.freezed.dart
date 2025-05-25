// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgentResponse _$AgentResponseFromJson(Map<String, dynamic> json) {
  return _AgentResponse.fromJson(json);
}

/// @nodoc
mixin _$AgentResponse {
  DraftResponse get draft => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  List<FunctionCall>? get functionCalls => throw _privateConstructorUsedError;

  /// Serializes this AgentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgentResponseCopyWith<AgentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentResponseCopyWith<$Res> {
  factory $AgentResponseCopyWith(
          AgentResponse value, $Res Function(AgentResponse) then) =
      _$AgentResponseCopyWithImpl<$Res, AgentResponse>;
  @useResult
  $Res call(
      {DraftResponse draft,
      @JsonKey(includeFromJson: false) List<FunctionCall>? functionCalls});

  $DraftResponseCopyWith<$Res> get draft;
}

/// @nodoc
class _$AgentResponseCopyWithImpl<$Res, $Val extends AgentResponse>
    implements $AgentResponseCopyWith<$Res> {
  _$AgentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draft = null,
    Object? functionCalls = freezed,
  }) {
    return _then(_value.copyWith(
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as DraftResponse,
      functionCalls: freezed == functionCalls
          ? _value.functionCalls
          : functionCalls // ignore: cast_nullable_to_non_nullable
              as List<FunctionCall>?,
    ) as $Val);
  }

  /// Create a copy of AgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DraftResponseCopyWith<$Res> get draft {
    return $DraftResponseCopyWith<$Res>(_value.draft, (value) {
      return _then(_value.copyWith(draft: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentResponseImplCopyWith<$Res>
    implements $AgentResponseCopyWith<$Res> {
  factory _$$AgentResponseImplCopyWith(
          _$AgentResponseImpl value, $Res Function(_$AgentResponseImpl) then) =
      __$$AgentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DraftResponse draft,
      @JsonKey(includeFromJson: false) List<FunctionCall>? functionCalls});

  @override
  $DraftResponseCopyWith<$Res> get draft;
}

/// @nodoc
class __$$AgentResponseImplCopyWithImpl<$Res>
    extends _$AgentResponseCopyWithImpl<$Res, _$AgentResponseImpl>
    implements _$$AgentResponseImplCopyWith<$Res> {
  __$$AgentResponseImplCopyWithImpl(
      _$AgentResponseImpl _value, $Res Function(_$AgentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? draft = null,
    Object? functionCalls = freezed,
  }) {
    return _then(_$AgentResponseImpl(
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as DraftResponse,
      functionCalls: freezed == functionCalls
          ? _value._functionCalls
          : functionCalls // ignore: cast_nullable_to_non_nullable
              as List<FunctionCall>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentResponseImpl implements _AgentResponse {
  const _$AgentResponseImpl(
      {required this.draft,
      @JsonKey(includeFromJson: false) final List<FunctionCall>? functionCalls})
      : _functionCalls = functionCalls;

  factory _$AgentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentResponseImplFromJson(json);

  @override
  final DraftResponse draft;
  final List<FunctionCall>? _functionCalls;
  @override
  @JsonKey(includeFromJson: false)
  List<FunctionCall>? get functionCalls {
    final value = _functionCalls;
    if (value == null) return null;
    if (_functionCalls is EqualUnmodifiableListView) return _functionCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AgentResponse(draft: $draft, functionCalls: $functionCalls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentResponseImpl &&
            (identical(other.draft, draft) || other.draft == draft) &&
            const DeepCollectionEquality()
                .equals(other._functionCalls, _functionCalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, draft, const DeepCollectionEquality().hash(_functionCalls));

  /// Create a copy of AgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentResponseImplCopyWith<_$AgentResponseImpl> get copyWith =>
      __$$AgentResponseImplCopyWithImpl<_$AgentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentResponseImplToJson(
      this,
    );
  }
}

abstract class _AgentResponse implements AgentResponse {
  const factory _AgentResponse(
      {required final DraftResponse draft,
      @JsonKey(includeFromJson: false)
      final List<FunctionCall>? functionCalls}) = _$AgentResponseImpl;

  factory _AgentResponse.fromJson(Map<String, dynamic> json) =
      _$AgentResponseImpl.fromJson;

  @override
  DraftResponse get draft;
  @override
  @JsonKey(includeFromJson: false)
  List<FunctionCall>? get functionCalls;

  /// Create a copy of AgentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgentResponseImplCopyWith<_$AgentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
