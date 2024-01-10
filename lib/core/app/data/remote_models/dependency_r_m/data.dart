import 'package:equatable/equatable.dart';

import 'social_media.dart';
import 'tag.dart';
import 'type.dart';

class Data extends Equatable {
  final List<TypeRM>? types;
  final List<TagRM>? tags;
  final List<SocialMediaRM>? socialMedia;

  const Data({this.types, this.tags, this.socialMedia});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        types: (json['types'] as List<dynamic>?)
            ?.map((e) => TypeRM.fromJson(e as Map<String, dynamic>))
            .toList(),
        tags: (json['tags'] as List<dynamic>?)
            ?.map((e) => TagRM.fromJson(e as Map<String, dynamic>))
            .toList(),
        socialMedia: (json['social_media'] as List<dynamic>?)
            ?.map((e) => SocialMediaRM.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'types': types?.map((e) => e.toJson()).toList(),
        'tags': tags?.map((e) => e.toJson()).toList(),
        'social_media': socialMedia?.map((e) => e.toJson()).toList(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [types, tags, socialMedia];
}
