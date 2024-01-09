import '../../data/remote_models/dependency_r_m/dependency_r_m.dart';
import '../app_service_client.dart';

part 'app_source_impl.dart';

abstract class AppSource {

  
  Future<DependencyRM> getDependencies();
}
