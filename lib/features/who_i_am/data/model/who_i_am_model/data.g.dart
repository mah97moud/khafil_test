// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      about: json['about'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => WhoIAmTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      favoriteSocialMedia: (json['favorite_social_media'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      salary: json['salary'] as int?,
      email: json['email'] as String?,
      birthDate: json['birth_date'] as String?,
      gender: json['gender'] as int?,
      type: json['type'] == null
          ? null
          : WhoIAmType.fromJson(json['type'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'about': instance.about,
      'tags': instance.tags,
      'favorite_social_media': instance.favoriteSocialMedia,
      'salary': instance.salary,
      'email': instance.email,
      'birth_date': instance.birthDate,
      'gender': instance.gender,
      'type': instance.type,
      'avatar': instance.avatar,
    };
