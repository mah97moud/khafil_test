import 'package:equatable/equatable.dart';

class TypeRM extends Equatable {
  final int? value;
  final String? label;

  const TypeRM({this.value, this.label});

  factory TypeRM.fromJson(Map<String, dynamic> json) => TypeRM(
        value: json['value'] as int?,
        label: json['label'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'value': value,
        'label': label,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [value, label];
}
