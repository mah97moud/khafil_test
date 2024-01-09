import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_media.freezed.dart';
part 'social_media.g.dart';

@freezed
class SocialMedia with _$SocialMedia {
  factory SocialMedia({
    @Default('') String value,
    @Default('') String label,
  }) = _SocialMedia;

  factory SocialMedia.fromJson(Map<String, dynamic> json) =>
      _$SocialMediaFromJson(json);
}
