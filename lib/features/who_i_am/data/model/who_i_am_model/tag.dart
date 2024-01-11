import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class WhoIAmTag with _$WhoIAmTag {
  factory WhoIAmTag({
    int? id,
    String? name,
  }) = _Tag;

  factory WhoIAmTag.fromJson(Map<String, dynamic> json) =>
      _$WhoIAmTagFromJson(json);
}
