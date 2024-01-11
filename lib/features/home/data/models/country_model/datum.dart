import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Country extends Equatable {
  final int? id;
  @JsonKey(name: 'country_code')
  final String? countryCode;
  final String? name;
  final String? capital;

  const Country({this.id, this.countryCode, this.name, this.capital});

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);

  Country copyWith({
    int? id,
    String? countryCode,
    String? name,
    String? capital,
  }) {
    return Country(
      id: id ?? this.id,
      countryCode: countryCode ?? this.countryCode,
      name: name ?? this.name,
      capital: capital ?? this.capital,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, countryCode, name, capital];
}
