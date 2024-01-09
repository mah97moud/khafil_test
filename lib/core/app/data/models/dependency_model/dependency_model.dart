import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'dependency_model.freezed.dart';
part 'dependency_model.g.dart';

@freezed
class DependencyModel with _$DependencyModel {
  factory DependencyModel({
    @Default(0) int status,
    @Default(true) bool success,
    required Data data,
  }) = _DependencyModel;

  factory DependencyModel.fromJson(Map<String, dynamic> json) =>
      _$DependencyModelFromJson(json);
}
