import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:khafil_test/core/app/data/remote_models/dependency_r_m/tag.dart';
import 'package:khafil_test/core/app/data/remote_models/dependency_r_m/type.dart';

part 'login_data.freezed.dart';
part 'login_data.g.dart';

@freezed
class LoginData with _$LoginData {
  factory LoginData({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? about,
    List<TagRM>? tags,
    @JsonKey(name: 'favorite_social_media') List<String>? favoriteSocialMedia,
    int? salary,
    String? email,
    @JsonKey(name: 'birth_date') String? birthDate,
    int? gender,
    TypeRM? type,
    String? avatar,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
