import 'package:equatable/equatable.dart';

import 'login_data/login_data.dart';

class LoginRM extends Equatable {
  final int? status;
  final bool? success;
  final LoginData? data;
  final String? accessToken;

  const LoginRM({this.status, this.success, this.data, this.accessToken});

  factory LoginRM.fromJson(Map<String, dynamic> json) => LoginRM(
        status: json['status'] as int?,
        success: json['success'] as bool?,
        data: json['data'] == null
            ? null
            : LoginData.fromJson(json['data'] as Map<String, dynamic>),
        accessToken: json['access_token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'success': success,
        'data': data?.toJson(),
        'access_token': accessToken,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, success, data, accessToken];
}
