import 'package:freezed_annotation/freezed_annotation.dart';

import 'social_media.dart';
import 'tag.dart';
import 'type.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @Default([]) List<TypeModel> types,
    @Default([]) List<TagModel> tags,
    @Default([]) @JsonKey(name: 'social_media') List<SocialMedia> socialMedia,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
