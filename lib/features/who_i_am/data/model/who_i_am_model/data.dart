import 'package:freezed_annotation/freezed_annotation.dart';

import 'tag.dart';
import 'type.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class WhoIAm with _$WhoIAm {
  factory WhoIAm({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? about,
    List<WhoIAmTag>? tags,
    @JsonKey(name: 'favorite_social_media') List<String>? favoriteSocialMedia,
    int? salary,
    String? email,
    @JsonKey(name: 'birth_date') String? birthDate,
    int? gender,
    WhoIAmType? type,
    String? avatar,
  }) = _Data;

  factory WhoIAm.fromJson(Map<String, dynamic> json) => _$WhoIAmFromJson(json);
}
