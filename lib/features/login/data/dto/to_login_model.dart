import 'package:khafil_test/features/login/data/responses/login_r_m/login_r_m.dart';

import '../models/login_model/login.dart';
import '../models/login_model/login_model.dart';
import '../responses/login_r_m/login_data/login_data.dart';

/// Convert LoginRM to LoginModel
extension ToLoginModel on LoginRM {
  LoginModel get toLoginModel => LoginModel.fromJson(toJson());
}

/// Convert LoginData to Login

extension ToLogin on LoginData {
  Login get toLogin => Login.fromJson(toJson());
  // Login(
  //   id: id,
  //   firstName: firstName,
  //   lastName: lastName,
  //   about: about,
  //   tags: tags,
  //   favoriteSocialMedia: favoriteSocialMedia,
  //   salary: salary,
  //   email: email,
  //   birthDate: birthDate,
  //   gender: gender,
  //   type: type,
  //   avatar: avatar,

  // );
}
