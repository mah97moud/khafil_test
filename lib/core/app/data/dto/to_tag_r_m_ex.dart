import 'package:khafil_test/core/app/data/dto/to_tag_model_ex.dart';
import 'package:khafil_test/core/app/data/models/dependency_model/tag.dart';
import 'package:khafil_test/core/app/data/remote_models/dependency_r_m/tag.dart';

/// Convert [TagModel] to [TagRM]
extension ToTagRMEx on List<TagRM> {
  List<TagModel> get toTagRMs {
    return map((e) => e.toTagModel).toList();
  }
}
