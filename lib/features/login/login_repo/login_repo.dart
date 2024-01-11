import 'package:khafil_test/core/app/network/app_source/app_source.dart';
import 'package:khafil_test/core/app/network/error_handler.dart';
import 'package:khafil_test/core/helpers/secure_storage_service.dart';
import 'package:khafil_test/features/login/data/dto/to_login_model.dart';

import '../../../core/app/network/network_info.dart';
import '../../../core/app/network/repository/repository.dart';
import '../../../core/helpers/result.dart';
import '../../../core/resources/app_strings.dart';
import '../data/models/login_model/login_model.dart';

class LoginRepo extends Repository {
  final AppSource _appSource;
  final NetworkInfo _networkInfo;

  LoginRepo({required NetworkInfo networkInfo, required AppSource appSource})
      : _networkInfo = networkInfo,
        _appSource = appSource;

  @override
  Future<Result<LoginModel, Exception>> login({
    required Map<String, dynamic> data,
  }) async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(
        error: NoInternetConnectionEx(AppStrings.noInternetConnection),
        message: AppStrings.noInternetConnection,
      );
    }

    try {
      final loginRM = await _appSource.login(data: data);

      print('loginRM : $loginRM');

      final model = loginRM.toLoginModel;

      if (model.status == 200) {
        await SecureStorageService.saveUserModel(model);
        loginModel = await SecureStorageService.getUserModel;
        return Success(data: model);
      } else {
        return Failure(
          error: Exception('Something went wrong'),
          message: 'Status Code ${model.status}\n ',
        );
      }
    } on Exception catch (e) {
      return Failure(error: e, message: ErrorHandler.handle(e).message);
    }
  }
}
