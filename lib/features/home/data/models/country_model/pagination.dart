import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'links.dart';

part 'pagination.g.dart';

@JsonSerializable()
class Pagination extends Equatable {
  final int? count;
  final int? total;
  final int? perPage;
  final int? currentPage;
  final int? totalPages;
  final Links? links;

  const Pagination({
    this.count,
    this.total,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.links,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return _$PaginationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaginationToJson(this);

  Pagination copyWith({
    int? count,
    int? total,
    int? perPage,
    int? currentPage,
    int? totalPages,
    Links? links,
  }) {
    return Pagination(
      count: count ?? this.count,
      total: total ?? this.total,
      perPage: perPage ?? this.perPage,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      links: links ?? this.links,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      count,
      total,
      perPage,
      currentPage,
      totalPages,
      links,
    ];
  }
}
