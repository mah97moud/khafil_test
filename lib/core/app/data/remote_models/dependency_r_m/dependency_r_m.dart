import 'package:equatable/equatable.dart';

import 'data.dart';

class DependencyRM extends Equatable {
  final int? status;
  final bool? success;
  final Data? data;

  const DependencyRM({this.status, this.success, this.data});

  factory DependencyRM.fromJson(Map<String, dynamic> json) => DependencyRM(
        status: json['status'] as int?,
        success: json['success'] as bool?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'success': success,
        'data': data?.toJson(),
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, success, data];
}
