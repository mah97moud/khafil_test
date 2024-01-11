import 'package:khafil_test/core/app/data/models/dependency_model/dependency_model.dart';
import 'package:khafil_test/features/home/data/models/country_model/datum.dart';

import '../../../../features/login/data/models/login_model/login_model.dart';
import '../../../../features/services/data/models/service_model/datum.dart';
import '../../../helpers/result.dart';

abstract class Repository {
  Future<Result<DependencyModel, Exception>> getDependencies() {
    throw UnimplementedError();
  }

  Future<Result<LoginModel, Exception>> login({
    required Map<String, dynamic> data,
  }) {
    throw UnimplementedError();
  }

  Future<Result<List<Country>, Exception>> countries({
    required int page,
  }) {
    throw UnimplementedError();
  }

  Future<Result<List<Service>, Exception>> services() {
    throw UnimplementedError();
  }

  Future<Result<List<Service>, Exception>> popularServices() {
    throw UnimplementedError();
  }
}
