import 'package:khafil_test/core/app/data/models/dependency_model/type.dart';
import 'package:khafil_test/core/app/data/remote_models/dependency_r_m/type.dart';

/// convert TypeRM to TypeModel
extension ToTypeModelEx on TypeRM {
  TypeModel get toTypeModel {
    return TypeModel.fromJson(toJson());
  }
}
