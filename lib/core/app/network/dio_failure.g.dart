// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DioFailureImpl _$$DioFailureImplFromJson(Map<String, dynamic> json) =>
    _$DioFailureImpl(
      statusCode: json['statusCode'] as int? ?? 200,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$DioFailureImplToJson(_$DioFailureImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
