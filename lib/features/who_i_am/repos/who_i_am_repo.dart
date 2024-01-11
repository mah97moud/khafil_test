import 'package:khafil_test/core/app/network/app_source/app_source.dart';
import 'package:khafil_test/core/app/network/repository/repository.dart';

import '../../../core/app/network/error_handler.dart';
import '../../../core/app/network/network_info.dart';
import '../../../core/helpers/result.dart';
import '../../../core/resources/app_strings.dart';
import '../data/model/who_i_am_model/data.dart';

class WhoIAmRepo extends Repository {
  final AppSource _appSource;
  final NetworkInfo _networkInfo;

  WhoIAmRepo({required AppSource appSource, required NetworkInfo networkInfo})
      : _appSource = appSource,
        _networkInfo = networkInfo;

  @override
  Future<Result<WhoIAm, Exception>> whoAmI() async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(
        error: NoInternetConnectionEx(AppStrings.noInternetConnection),
        message: AppStrings.noInternetConnection,
      );
    }

    try {
      final whoIAmRM = await _appSource.whoAmI();
      final whoIAm = whoIAmRM.data ?? WhoIAm();

      if (whoIAmRM.status == 200) {
        return Success(data: whoIAm);
      } else {
        return Failure(
          error: Exception('Something went wrong'),
          message: 'Something went wrong',
        );
      }
    } on Exception catch (e) {
      return Failure(error: e, message: ErrorHandler.handle(e).message);
    }
  }
}
