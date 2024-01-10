import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';
part 'type.g.dart';

@freezed
class TypeModel with _$TypeModel {
  factory TypeModel({
    @Default(0) int value,
    @Default('') String label,
  }) = _Type;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
