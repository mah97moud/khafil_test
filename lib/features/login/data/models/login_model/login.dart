// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/app/data/models/dependency_model/tag.dart';
import '../../../../../core/app/data/models/dependency_model/type.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class Login with _$Login {
  const factory Login({
    @Default(0) int id,
    @Default('') @JsonKey(name: 'first_name') String firstName,
    @Default('') @JsonKey(name: 'last_name') String lastName,
    @Default('') String about,
    @Default(<TagModel>[]) List<TagModel> tags,
    @Default(<String>[])
    @JsonKey(name: 'favorite_social_media')
    List<String> favoriteSocialMedia,
    @Default(100) int salary,
    @Default('') String email,
    @Default('') @JsonKey(name: 'birth_date') String birthDate,
    int? gender,
    TypeModel? type,
    String? avatar,
  }) = _Data;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
