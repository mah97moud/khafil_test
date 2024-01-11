import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Service with _$Service {
  factory Service({
    int? id,
    @JsonKey(name: 'main_image') String? mainImage,
    int? price,
    dynamic discount,
    @JsonKey(name: 'price_after_discount') int? priceAfterDiscount,
    String? title,
    @JsonKey(name: 'average_rating') int? averageRating,
    @JsonKey(name: 'completed_sales_count') int? completedSalesCount,
    bool? recommended,
  }) = _Datum;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}
