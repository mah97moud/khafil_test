// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DependencyModelImpl _$$DependencyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DependencyModelImpl(
      status: json['status'] as int? ?? 0,
      success: json['success'] as bool? ?? true,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DependencyModelImplToJson(
        _$DependencyModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'data': instance.data,
    };
