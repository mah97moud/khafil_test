import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';
part 'type.g.dart';

@freezed
class WhoIAmType with _$WhoIAmType {
  factory WhoIAmType({
    int? code,
    String? name,
    @JsonKey(name: 'nice_name') String? niceName,
  }) = _Type;

  factory WhoIAmType.fromJson(Map<String, dynamic> json) => _$WhoIAmTypeFromJson(json);
}
