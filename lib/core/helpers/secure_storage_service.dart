import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../features/login/data/models/login_model/login_model.dart';



LoginModel? loginModel;

class SecureStorageService {
  static const _secureStorage = FlutterSecureStorage();

  static final instance = SecureStorageService();
  factory SecureStorageService() => instance;

  static const String _userModelKey = 'userModelKey';

  static Future<void> saveUserModel(LoginModel loginModel) async {
    await _secureStorage.write(
      key: _userModelKey,
      value: jsonEncode(loginModel.toJson()),
      aOptions: _getAndroidOptions(),
    );
  }

  static Future<LoginModel?> get getUserModel async {
    var readData = await _secureStorage.read(
      key: _userModelKey,
      aOptions: _getAndroidOptions(),
    );
    if (readData != null) {
      final userModel = LoginModel.fromJson(jsonDecode(readData));

      return userModel;
    }
    return null;
  }

  static Future<void> deleteUserModel() async {
    await _secureStorage.delete(
      key: _userModelKey,
      aOptions: _getAndroidOptions(),
    );
  }

  // static const String _profileModelKey = 'profileModelKey';

  // static Future<void> saveProfileModel(ProfileModel profileModel) async {
  //   await _secureStorage.write(
  //     key: _profileModelKey,
  //     value: jsonEncode(profileModel.toJson()),
  //     aOptions: _getAndroidOptions(),
  //   );
  // }

  // static Future<ProfileModel?> get getProfileModel async {
  //   var readData = await _secureStorage.read(
  //     key: _profileModelKey,
  //     aOptions: _getAndroidOptions(),
  //   );
  //   final profile = ProfileModel.fromJson(jsonDecode(readData ?? '{}'));

  //   return profile;
  // }

  // static Future<void> deleteProfileModel() async {
  //   await _secureStorage.delete(
  //     key: _profileModelKey,
  //     aOptions: _getAndroidOptions(),
  //   );
  // }

  static AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
}
