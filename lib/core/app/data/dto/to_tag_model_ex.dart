import 'package:khafil_test/core/app/data/models/dependency_model/tag.dart';
import 'package:khafil_test/core/app/data/remote_models/dependency_r_m/tag.dart';

///Convert TagRM to TagModel
extension ToTagModelEx on TagRM {
  TagModel get toTagModel {
    return TagModel.fromJson(toJson());
  }
}
