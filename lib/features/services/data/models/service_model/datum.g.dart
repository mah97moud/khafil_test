// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['id'] as int?,
      mainImage: json['main_image'] as String?,
      price: json['price'] as int?,
      discount: json['discount'],
      priceAfterDiscount: json['price_after_discount'] as int?,
      title: json['title'] as String?,
      averageRating: json['average_rating'] as int?,
      completedSalesCount: json['completed_sales_count'] as int?,
      recommended: json['recommended'] as bool?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main_image': instance.mainImage,
      'price': instance.price,
      'discount': instance.discount,
      'price_after_discount': instance.priceAfterDiscount,
      'title': instance.title,
      'average_rating': instance.averageRating,
      'completed_sales_count': instance.completedSalesCount,
      'recommended': instance.recommended,
    };
