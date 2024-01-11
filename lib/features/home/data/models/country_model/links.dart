import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'links.g.dart';

@JsonSerializable()
class Links extends Equatable {
  final String? next;

  const Links({this.next});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);

  Links copyWith({
    String? next,
  }) {
    return Links(
      next: next ?? this.next,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [next];
}
