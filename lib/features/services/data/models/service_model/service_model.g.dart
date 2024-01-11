// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      status: json['status'] as int?,
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'data': instance.data,
    };
