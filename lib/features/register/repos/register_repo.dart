import 'dart:io';

import 'package:khafil_test/core/app/network/app_source/app_source.dart';
import 'package:khafil_test/core/app/network/error_handler.dart';
import 'package:khafil_test/core/app/network/network_info.dart';
import 'package:khafil_test/core/app/network/repository/repository.dart';

import '../../../core/app/network/register_error/register_error.dart';
import '../../../core/helpers/result.dart';

class RegisterRepo extends Repository {
  final AppSource _appSource;
  final NetworkInfo _networkInfo;

  RegisterRepo({required AppSource appSource, required NetworkInfo networkInfo})
      : _appSource = appSource,
        _networkInfo = networkInfo;

  @override
  @override
  Future<Result<RegisterError, Exception>> register({
    required String firstName,
    required String lastName,
    required String about,
    required List<int> tags,
    required List<String> favoriteSocialMedia,
    required int salary,
    required String email,
    required String password,
    required String confirmPassword,
    required String birthDate,
    required int gender,
    required int type,
    File? avatar,
  }) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return Failure(
          error: NoInternetConnectionEx(
            'No internet connection',
          ),
          message: 'No internet connection');
    }

    try {
      final result = await _appSource.register(
        firstName: firstName,
        lastName: lastName,
        about: about,
        tags: tags,
        favoriteSocialMedia: favoriteSocialMedia,
        salary: salary,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        birthDate: birthDate,
        gender: gender,
        type: type,
        avatar: avatar,
      );
      if (result.status == 200) {
        return Success(data: result);
      } else {
        return Failure(error: Exception(), message: result.data.toString());
      }
    } catch (e) {
      return Failure(
          error: Exception(), message: ErrorHandler.handle(e).message);
    }
  }
}
