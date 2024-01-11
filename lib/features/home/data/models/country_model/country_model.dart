import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'pagination.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel extends Equatable {
  final int? status;
  final bool? success;
  final List<Country>? data;
  final Pagination? pagination;

  const CountryModel({
    this.status,
    this.success,
    this.data,
    this.pagination,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return _$CountryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);

  CountryModel copyWith({
    int? status,
    bool? success,
    List<Country>? data,
    Pagination? pagination,
  }) {
    return CountryModel(
      status: status ?? this.status,
      success: success ?? this.success,
      data: data ?? this.data,
      pagination: pagination ?? this.pagination,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, success, data, pagination];
}
