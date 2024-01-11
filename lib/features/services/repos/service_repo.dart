import 'package:khafil_test/core/app/network/repository/repository.dart';

import '../../../core/app/network/app_source/app_source.dart';
import '../../../core/app/network/error_handler.dart';
import '../../../core/app/network/network_info.dart';
import '../../../core/helpers/result.dart';
import '../../../core/resources/app_strings.dart';
import '../data/models/service_model/datum.dart';

class ServiceRepo extends Repository {
  final AppSource _appSource;
  final NetworkInfo _networkInfo;

  ServiceRepo({required AppSource appSource, required NetworkInfo networkInfo})
      : _appSource = appSource,
        _networkInfo = networkInfo;

  @override
  Future<Result<List<Service>, Exception>> services() async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(
        error: NoInternetConnectionEx(AppStrings.noInternetConnection),
        message: AppStrings.noInternetConnection,
      );
    }

    try {
      final serviceRM = await _appSource.services();

      if (serviceRM.status == 200) {
        final models = serviceRM.data ?? [];

        return Success(data: models);
      } else {
        return Failure(
          error: Exception('Something went wrong'),
          message: 'Something went wrong',
        );
      }
    } on Exception catch (e) {
      return Failure(
        error: e,
        message: ErrorHandler.handle(e).message,
      );
    }
  }

  @override
  Future<Result<List<Service>, Exception>> popularServices() async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(
        error: NoInternetConnectionEx(AppStrings.noInternetConnection),
        message: AppStrings.noInternetConnection,
      );
    }

    try {
      final serviceRM = await _appSource.popularServices();

      if (serviceRM.status == 200) {
        final models = serviceRM.data ?? [];

        return Success(data: models);
      } else {
        return Failure(
          error: Exception('Something went wrong'),
          message: 'Something went wrong',
        );
      }
    } on Exception catch (e) {
      return Failure(
        error: e,
        message: ErrorHandler.handle(e).message,
      );
    }
  }
}
