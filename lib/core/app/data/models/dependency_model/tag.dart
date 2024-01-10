import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class TagModel with _$TagModel {
  factory TagModel({
    @Default(0) int value,
    @Default('') String label,
  }) = _Tag;

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}
