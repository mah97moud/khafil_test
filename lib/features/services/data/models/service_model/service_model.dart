import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  factory ServiceModel({
    int? status,
    bool? success,
    List<Service>? data,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
