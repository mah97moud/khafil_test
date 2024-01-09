import 'package:khafil_test/core/app/data/dto/to_dependency_model.dart';
import 'package:khafil_test/core/app/data/models/dependency_model/dependency_model.dart';
import 'package:khafil_test/core/app/network/app_source/app_source.dart';
import 'package:khafil_test/core/app/network/error_handler.dart';
import 'package:khafil_test/core/app/network/network_info.dart';
import 'package:khafil_test/core/app/network/repository/repository.dart';
import 'package:khafil_test/core/helpers/result.dart';

import '../../../resources/app_strings.dart';

class AppRepo extends Repository {
  final AppSource _appSource;
  final NetworkInfo _networkInfo;

  AppRepo({required AppSource appSource, required NetworkInfo networkInfo})
      : _appSource = appSource,
        _networkInfo = networkInfo;

  @override
  Future<Result<DependencyModel, Exception>> getDependencies() async {
    final isConnected = await _networkInfo.isConnected;

    if (!isConnected) {
      return Failure(
        error: NoInternetConnectionEx(AppStrings.noInternetConnection),
        message: AppStrings.noInternetConnection,
      );
    }

    try {
      final dependencyRM = await _appSource.getDependencies();
      final dependencyModel = dependencyRM.toDependencyModel;

      return Success(data: dependencyModel);
    } on Exception catch (e) {
      return Failure(error: e, message: ErrorHandler.handle(e).message);
    }
  }
}
