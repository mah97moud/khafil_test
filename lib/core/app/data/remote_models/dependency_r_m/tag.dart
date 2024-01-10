import 'package:equatable/equatable.dart';

class TagRM extends Equatable {
  final int? value;
  final String? label;

  const TagRM({this.value, this.label});

  factory TagRM.fromJson(Map<String, dynamic> json) => TagRM(
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
