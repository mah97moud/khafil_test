import 'package:khafil_test/core/app/data/models/dependency_model/dependency_model.dart';

import '../../../helpers/result.dart';

abstract class Repository {
  Future<Result<DependencyModel, Exception>> getDependencies();
}
