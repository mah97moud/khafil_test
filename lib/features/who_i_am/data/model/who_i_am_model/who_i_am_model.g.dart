// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'who_i_am_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WhoIAmModelImpl _$$WhoIAmModelImplFromJson(Map<String, dynamic> json) =>
    _$WhoIAmModelImpl(
      status: json['status'] as int?,
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : WhoIAm.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WhoIAmModelImplToJson(_$WhoIAmModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'success': instance.success,
      'data': instance.data,
    };
