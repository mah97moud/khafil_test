import 'package:khafil_test/core/app/data/models/dependency_model/dependency_model.dart';

import '../../../../features/login/data/models/login_model/login_model.dart';
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
}
