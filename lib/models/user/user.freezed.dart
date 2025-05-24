// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'github_username')
  String? get githubUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'website_url')
  String? get websiteUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'joined_at')
  String get joinedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String username,
      String name,
      String summary,
      String? location,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'github_username') String? githubUsername,
      @JsonKey(name: 'website_url') String? websiteUrl,
      @JsonKey(name: 'joined_at') String joinedAt,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? summary = null,
    Object? location = freezed,
    Object? twitterUsername = freezed,
    Object? githubUsername = freezed,
    Object? websiteUrl = freezed,
    Object? joinedAt = null,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUsername: freezed == githubUsername
          ? _value.githubUsername
          : githubUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String name,
      String summary,
      String? location,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'github_username') String? githubUsername,
      @JsonKey(name: 'website_url') String? websiteUrl,
      @JsonKey(name: 'joined_at') String joinedAt,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? summary = null,
    Object? location = freezed,
    Object? twitterUsername = freezed,
    Object? githubUsername = freezed,
    Object? websiteUrl = freezed,
    Object? joinedAt = null,
    Object? profileImage = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      githubUsername: freezed == githubUsername
          ? _value.githubUsername
          : githubUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: null == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.username,
      required this.name,
      required this.summary,
      this.location,
      @JsonKey(name: 'twitter_username') this.twitterUsername,
      @JsonKey(name: 'github_username') this.githubUsername,
      @JsonKey(name: 'website_url') this.websiteUrl,
      @JsonKey(name: 'joined_at') required this.joinedAt,
      @JsonKey(name: 'profile_image') this.profileImage});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String name;
  @override
  final String summary;
  @override
  final String? location;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitterUsername;
  @override
  @JsonKey(name: 'github_username')
  final String? githubUsername;
  @override
  @JsonKey(name: 'website_url')
  final String? websiteUrl;
  @override
  @JsonKey(name: 'joined_at')
  final String joinedAt;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;

  @override
  String toString() {
    return 'User(id: $id, username: $username, name: $name, summary: $summary, location: $location, twitterUsername: $twitterUsername, githubUsername: $githubUsername, websiteUrl: $websiteUrl, joinedAt: $joinedAt, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.twitterUsername, twitterUsername) ||
                other.twitterUsername == twitterUsername) &&
            (identical(other.githubUsername, githubUsername) ||
                other.githubUsername == githubUsername) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      name,
      summary,
      location,
      twitterUsername,
      githubUsername,
      websiteUrl,
      joinedAt,
      profileImage);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String username,
      required final String name,
      required final String summary,
      final String? location,
      @JsonKey(name: 'twitter_username') final String? twitterUsername,
      @JsonKey(name: 'github_username') final String? githubUsername,
      @JsonKey(name: 'website_url') final String? websiteUrl,
      @JsonKey(name: 'joined_at') required final String joinedAt,
      @JsonKey(name: 'profile_image') final String? profileImage}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get name;
  @override
  String get summary;
  @override
  String? get location;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername;
  @override
  @JsonKey(name: 'github_username')
  String? get githubUsername;
  @override
  @JsonKey(name: 'website_url')
  String? get websiteUrl;
  @override
  @JsonKey(name: 'joined_at')
  String get joinedAt;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
