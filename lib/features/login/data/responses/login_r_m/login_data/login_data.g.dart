// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      about: json['about'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagRM.fromJson(e as Map<String, dynamic>))
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
          : TypeRM.fromJson(json['type'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) =>
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
