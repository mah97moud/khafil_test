import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_failure.freezed.dart';
part 'dio_failure.g.dart';

@freezed
class DioFailure with _$DioFailure {
  factory DioFailure({
    @Default(200) int statusCode,
    @Default('') String message,
  }) = _DioFailure;

  factory DioFailure.fromJson(Map<String, dynamic> json) =>
      _$DioFailureFromJson(json);
}
