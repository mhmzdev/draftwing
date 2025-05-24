// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      name: json['name'] as String,
      summary: json['summary'] as String,
      location: json['location'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      githubUsername: json['github_username'] as String?,
      websiteUrl: json['website_url'] as String?,
      joinedAt: DateTime.parse(json['joined_at'] as String),
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'summary': instance.summary,
      'location': instance.location,
      'twitter_username': instance.twitterUsername,
      'github_username': instance.githubUsername,
      'website_url': instance.websiteUrl,
      'joined_at': instance.joinedAt.toIso8601String(),
      'profile_image': instance.profileImage,
    };
