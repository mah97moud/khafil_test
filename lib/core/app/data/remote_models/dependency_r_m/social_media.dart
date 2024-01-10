import 'package:equatable/equatable.dart';

class SocialMediaRM extends Equatable {
  final String? value;
  final String? label;

  const SocialMediaRM({this.value, this.label});

  factory SocialMediaRM.fromJson(Map<String, dynamic> json) => SocialMediaRM(
        value: json['value'] as String?,
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
