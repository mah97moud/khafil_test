import 'package:khafil_test/core/app/data/dto/to_tag_r_m_ex.dart';
import 'package:khafil_test/core/app/data/dto/to_type_model_ex.dart';
import 'package:khafil_test/core/extensions/general_ex.dart';
import 'package:khafil_test/features/login/data/responses/login_r_m/login_r_m.dart';

import '../models/login_model/login.dart';
import '../models/login_model/login_model.dart';
import '../responses/login_r_m/login_data/login_data.dart';

/// Convert LoginRM to LoginModel
extension ToLoginModel on LoginRM {
  LoginModel get toLoginModel => LoginModel(
        status: status,
        success: success,
        data: data?.toLogin,
        accessToken: accessToken,
      );
}

/// Convert LoginData to Login

extension ToLogin on LoginData {
  Login get toLogin => Login(
        id: id.asOrNull(),
        firstName: firstName.asOrNull(),
        lastName: lastName.asOrNull(),
        about: about.asOrNull(),
        tags: tags.toTagRMs,
        favoriteSocialMedia: favoriteSocialMedia.toListOrEmpty(),
        salary: salary.asOrNull(),
        email: email.asOrNull(),
        birthDate: birthDate.asOrNull(),
        gender: gender,
        type: type.toTypeModel,
        avatar: avatar,
      );
}
