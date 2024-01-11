import 'package:khafil_test/core/app/network/repository/repository.dart';
import 'package:khafil_test/features/home/data/models/country_model/datum.dart';

import '../../../core/app/network/app_source/app_source.dart';
import '../../../core/app/network/error_handler.dart';
import '../../../core/app/network/network_info.dart';
import '../../../core/helpers/result.dart';
import '../../../core/resources/app_strings.dart';

class HomeRepo extends Repository {
  final AppSource _appSource;
  final NetworkInfo _networkInfo;

  HomeRepo({required AppSource appSource, required NetworkInfo networkInfo})
      : _networkInfo = networkInfo,
        _appSource = appSource;

  @override
  Future<Result<List<Country>, Exception>> countries() async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(
        error: NoInternetConnectionEx(AppStrings.noInternetConnection),
        message: AppStrings.noInternetConnection,
      );
    }

    try {
      final countryRM = await _appSource.countries();
      final countries = countryRM.data ?? <Country>[];

      if (countryRM.status == 200) {
        return Success(data: countries);
      } else {
        return Failure(
          error: Exception(),
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
