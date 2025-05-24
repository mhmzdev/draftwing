import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String name,
    required String summary,
    String? location,
    @JsonKey(name: 'twitter_username') String? twitterUsername,
    @JsonKey(name: 'github_username') String? githubUsername,
    @JsonKey(name: 'website_url') String? websiteUrl,
    @JsonKey(name: 'joined_at') required DateTime joinedAt,
    @JsonKey(name: 'profile_image') String? profileImage,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
