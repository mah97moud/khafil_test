import 'package:equatable/equatable.dart';

class GeneralError extends Equatable {
  final String? code;
  final String? message;

  const GeneralError({this.code, this.message});

  factory GeneralError.fromJson(Map<String, dynamic> json) => GeneralError(
        code: json['code'] as String?,
        message: json['message'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [code, message];
}
