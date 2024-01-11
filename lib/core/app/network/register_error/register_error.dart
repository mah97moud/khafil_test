import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_error.freezed.dart';
part 'register_error.g.dart';

@freezed
class RegisterError with _$RegisterError {
  factory RegisterError({
    int? status,
    bool? success,
    dynamic data,
  }) = _RegisterError;

  factory RegisterError.fromJson(Map<String, dynamic> json) =>
      _$RegisterErrorFromJson(json);
}
