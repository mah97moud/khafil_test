import '../models/dependency_model/dependency_model.dart';
import '../remote_models/dependency_r_m/dependency_r_m.dart';

/// Convert [ToDependencyRM] to [DependencyModel]

extension ToDependencyModelEx on DependencyRM {
  DependencyModel get toDependencyModel {
    return DependencyModel.fromJson(toJson());
  }
}
