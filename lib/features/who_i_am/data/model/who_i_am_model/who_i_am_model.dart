import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'who_i_am_model.freezed.dart';
part 'who_i_am_model.g.dart';

@freezed
class WhoIAmModel with _$WhoIAmModel {
  factory WhoIAmModel({
    int? status,
    bool? success,
    WhoIAm? data,
  }) = _WhoIAmModel;

  factory WhoIAmModel.fromJson(Map<String, dynamic> json) =>
      _$WhoIAmModelFromJson(json);
}
