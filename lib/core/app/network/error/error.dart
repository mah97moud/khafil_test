import 'package:equatable/equatable.dart';

import 'errors.dart';
import 'general_error.dart';

class Error extends Equatable {
  final String? message;
  final Errors? errors;
  final GeneralError? error;

  const Error({
    required this.error,
    required this.message,
    required this.errors,
  });

  factory Error.fromJson(Map<String, dynamic> json) => Error(
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : GeneralError.fromJson(
              json['general_error'] as Map<String, dynamic>));

  Map<String, dynamic> toJson() => {
        'message': message,
        'errors': errors?.toJson(),
        'error': error?.toJson()
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [message, errors, error];
}
