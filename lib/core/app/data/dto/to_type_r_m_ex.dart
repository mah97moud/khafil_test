import 'package:khafil_test/core/app/data/dto/to_type_model_ex.dart';
import 'package:khafil_test/core/app/data/models/dependency_model/type.dart';
import 'package:khafil_test/core/app/data/remote_models/dependency_r_m/type.dart';

/// Convert [TypeRM] to [TypeModel]
extension ToTypeRMEx on List<TypeRM> {
  List<TypeModel> get toTypeRMs {
    return map((e) => e.toTypeModel).toList();
  }
}
